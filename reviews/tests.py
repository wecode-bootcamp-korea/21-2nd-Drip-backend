import jwt

from django.test       import Client, TestCase
from unittest.mock     import patch, MagicMock
from django.core.files import File

from drip_settings   import SECRET_KEY, ALGORITHM
from users.models    import User
from products.models import Product, Search, SubCategory, Category
from .models         import Review

class ReviewTest(TestCase):
    @classmethod
    def setUpTestData(cls):
        user = User.objects.create(
            id            = 1,
            name          = '박준영',
            email         = 'sjwm98@ssil.com',
            profile_image = 'asdjdjaj',
            origin_pk     = 1
        )

        User.objects.create(
            id            = 2,
            name          = '박준영',
            email         = 'sjwm98@sil.com',
            profile_image = 'asdjdjaj',
            origin_pk     = 1
        )

        Search.objects.create(
            count = 0,
            id    = 1
        ) 

        Category.objects.create(
            id   = 1,
            name = '엑티비티'
        )

        SubCategory.objects.create(
            id          = 1,
            name        = '운동',
            discount    = '1.1',
            category_id = 1
        )

        Product.objects.create(
            name            = '자전거',
            price           = '1500',
            main_image      = 'dfsfsfsf',
            description     = 'asdda',
            address         = '광주',
            sell_count      = 20,
            date            = '2021-06-04',
            searched_id     = 1,
            sub_category_id = 1,
            id              = 1
        )

        Product.objects.create(
            name            = '자전거',
            price           = '1500',
            main_image      = 'dfsfsfsf',
            description     = 'asdda',
            address         = '광주',
            sell_count      = 20,
            date            = '2021-06-04',
            searched_id     = 1,
            sub_category_id = 1,
            id              = 2
        )

        review = Review.objects.create(
            id         = 1,
            user_id    = 1,
            rating     = 4.3,
            product_id = 1,
            content    = 'sdfdsf',
            image_url  = 'aadsd.jpg'
        )

        review.created_at = '2021-06-30T17:09:15.464'
        review.save()

    
        cls.token   = jwt.encode({'id' : user.id}, SECRET_KEY, ALGORITHM)
        
    def tearDown(self):
        User.objects.all().delete()
        Product.objects.all().delete()
        Search.objects.all().delete()
        Category.objects.all().delete()
        SubCategory.objects.all().delete()
        Review.objects.all().delete()

    @patch('reviews.views.boto3.client')
    def test_review_post_success(self, mock_s3client):
        client = Client()
        mock_file                    = MagicMock(spec=File)
        mock_file_name               = 'aadsd.jpg'
        mock_s3client.upload_fileobj = MagicMock()
        headers                      = {'HTTP_Authorization': self.token}
        form_data                    = {'filename' : mock_file, 'content' : 'sdfdsf', 'rating' : 4.3, 'product' : 1}
        

        response  = client.post('/reviews', form_data, **headers)

        self.assertEqual(response.json(), {'result' : 'SUCCESS'})
        self.assertEqual(response.status_code, 201)

    @patch('reviews.views.boto3.client')
    def test_review_key_error(self, mock_s3client):
        client = Client()
        mock_file                    = MagicMock(spec=File)
        mock_file_name               = 'aadsd.jpg'
        mock_s3client.upload_fileobj = MagicMock()
        headers                      = {'HTTP_Authorization': self.token}
        form_data                    = {'filename' : mock_file, 'content' : 'sdfdsf', 'rating' : 4.3}

        response  = client.post('/reviews', form_data, **headers)

        self.assertEqual(response.json(), {'message' : 'KEY_ERROR'})
        self.assertEqual(response.status_code, 400)

    def test_review_get_success(self):
        client  = Client()
        headers = {'HTTP_Authorization': self.token}

        review_list = [{
                'user'         : 1,
                'content'      : 'sdfdsf',
                'rating'       : '4.3',
                'product'      : 1,
                'like_count'   : 0,
                'review_count' : 1,
                'image_url'    : 'aadsd.jpg',
                'like'         : False,
                'created_at'   : '2021-06-30T17:09:15.464'
                }]

        response  = client.get('/reviews/1', content_type = 'application/json', **headers)
        self.assertEqual(response.json(), {'result' : review_list})
        self.assertEqual(response.status_code, 200)
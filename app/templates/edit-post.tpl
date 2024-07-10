<!DOCTYPE html>
<html lang="fa">
<head>
  <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  <meta content="IE=edge" http-equiv="X-UA-Compatible">
  <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
  <title>ویرایش پست - وبلاگ ساده</title>
  <link href="../../assets/css/styles.css" rel="stylesheet">
  <link href="assets/css/vazir-font.css" rel="stylesheet">
  <link href="assets/css/fontello.css" rel="stylesheet">
</head>
<body>
  <div id="layoutDefault">
    <div id="layoutDefault_content">
      <main>
        <nav class="navbar navbar-marketing navbar-expand-lg bg-white navbar-light">
          <div class="container">
            <a class="navbar-brand text-primary m-4" href="https://themes.startbootstrap.com/sb-ui-kit-pro/index.html">وبلاگ ساده</a><button aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler" data-target="#navbarSupportedContent" data-toggle="collapse" type="button"></button>
          </div>
        </nav>
        <header class="page-header page-header-dark bg-img-cover overlay overlay-60">
          <div class="page-header-content">
            <div class="container text-center">
              <div class="row justify-content-center">
                <div class="col-lg-8">
                  <h1 class="page-header-title mb-3">وبلاگ ساده</h1>
                  <p class="mb-0">وبلاگی که همه چیز در آن آزاد است</p>
                </div>
              </div>
            </div>
          </div>
        </header>
        <section class="bg-light py-10">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-10 col-xl-8">
                <div class="single-post">
                  <h1>ویرایش پست</h1>
                  <br>
                  <form method="post">
                    <div class="form-group">
                      <label for="exampleInputEmail1">عنوان پست</label>
                      <input type="text" class="form-control" id="title" name="title" value="<?php echo $post['title']; ?>">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">نام نویسنده</label>
                      <input type="text" class="form-control" id="author_name" name="author_name" value="<?php echo $post['author_name']; ?>">
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlTextarea1">محتوای پست</label>
                      <textarea class="form-control" id="content" name="content" rows="8"><?php echo $post['content']; ?></textarea>
                    </div>
                    <input type="submit" class="btn btn-primary" value="ذخیره">
                  </form>
                </div>
              </div>
            </div>
          </div>
        </section>
      </main>
    </div>
    <div id="layoutDefault_footer">
      <footer class="footer pt-10 pb-5 mt-auto bg-dark footer-dark">
        <div class="container">
          <div class="row">
            <div class="col-lg-3">
              <div class="footer-brand text-white">
                وبلاگ ساده
              </div>
              <div class="mb-3 text-white">
                وبلاگی که همه چیز در آن آزاد است
              </div>
            </div>
          </div>
          <hr class="my-5">
          <div class="row align-items-center">
            <div class="col-md-12 text-right small">
              By <a href="" target="_blank">Alireza</a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
</body>
</html>
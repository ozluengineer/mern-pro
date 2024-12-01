# mern-pro
Kimlik bilgilerini Jenkins sunucunuzda tanımlamanız ve daha sonra pipeline içinde kullanmanız gerekiyor.

Jenkins'de kimlik bilgilerini tanımlamak için şu adımları izleyebilirsiniz:

A-Jenkins Yönetim Paneli:

Jenkins ana sayfasından "Manage Jenkins" bölümüne gidin.

"Manage Credentials" seçeneğini seçin.

B-Kimlik Bilgisi Ekleyin:

"Global" (veya ilgili alanı) seçin.

"Add Credentials" seçeneğini tıklayın.

C-Kimlik Bilgisi Türünü Seçin:

Docker Hub ve AWS için Username with password türünü kullanabilirsiniz.

Kubernetes config dosyası için Secret file türünü kullanabilirsiniz.

D-Kimlik Bilgilerini Girin:

Docker Hub:

Username: Docker Hub kullanıcı adınız.

Password: Docker Hub parolanız.

ID: dockerhub (Jenkinsfile'da kullanacağınız ID).

AWS:

Username: AWS Access Key ID.

Password: AWS Secret Access Key.

ID: aws (Jenkinsfile'da kullanacağınız ID).

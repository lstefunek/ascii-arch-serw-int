# coding: utf-8

Customer.create( :name => "Jan", :surname => "Kowalski", :town => "Księżyc", :zipcode => "??-???", :street => "Platon", :streetnumber => 1, :phone => "123-456-789" )
User.create( :username => "jkowalski", :email => "jkowalski@moon.mo", :password => "pass", :password_confirmation => "pass", :customer => Customer.find(1) )
User.create( :username => "admin", :email => "admin@ascii.pl", :password => "pass", :password_confirmation => "pass", :role => "admin" )

Category.create( :name => "Oprogramowanie graficzne" )
Category.create( :name => "Systemy operacyjne" )
Category.create( :name => "Środowiska programistyczne" )
Category.create( :name => "Programy antywirusowe" )

Product.create( :name => "CorelDraw Graphics Suite X5 PL - Home & Student", :body => "Oprogramowanie do projektowania grafiki zapewniającej skuteczną komunikację wizualną. Oprzyj swoje pomysły na bogatych możliwościach pakietu CorelDRAW® Graphics Suite X5 i skutecznie oddziałuj za pośrednictwem dowolnego medium. To wszechstronne oprogramowanie do projektowania graficznego jest kompletnie wyposażone — oferuje narzędzia do tworzenia grafiki wektorowej, składu stron, edycji zdjęć, trasowania, przygotowywania grafik internetowych i animacji, a wszystko to w jednym zintegrowanym pakiecie. Zaprojektowane zarówno dla profesjonalnych grafików, jak i początkujących użytkowników, oferuje szybki, intuicyjny tok pracy, cenne materiały cyfrowe, czołową na rynku zgodność z formatami plików oraz narzędzia do projektowania graficznego, dzięki którym możesz uzyskać więcej, niż się spodziewasz!", :price => 359, :count => 100, :photo_file_name => "11257220467225631761.jpg", :photo_content_type => "image/jpeg", :photo_file_size => 50239, :photo_updated_at => "2011-01-10 19:23:11", :category_id => 1)
Product.create( :name => "Adobe Photoshop CS5 PL WIN BOX", :body => "Tworzenie zaawansowanej grafiki zgodnie z profesjonalnymi standardami. Oprogramowanie Adobe® Photoshop® CS5 wprowadza nową jakość obróbki obrazów cyfrowych. Oferuje wydajne narzędzia do pracy ze zdjęciami i przełomowe funkcje zaznaczania na obrazach, realistycznego malowania oraz inteligentnego retuszowania. Oprócz obsługi technologii 64-bitowej na różnych platformach w programie wprowadzono wiele poprawek dotyczących obiegów pracy.", :price => 3199, :count => 49, :photo_file_name => "d41d8fa1378796cea4d250deab3db01d.jpg", :photo_content_type => "image/jpeg", :photo_file_size => 150213, :photo_updated_at => "2011-01-10 19:24:45", :category_id => 1)
Product.create( :name => "Microsoft Windows 7 Home Premium PL BOX", :body => "System Windows 7 Home Premium sprawia, że tworzenie sieci domowej i udostępnianie w niej ulubionych zdjęć, filmów i muzyki jest wyjątkowo proste. Umożliwia nawet oglądanie, wstrzymywanie i nagrywanie telewizji. System Windows 7 Home Premium zapewnia najwyższej klasy cyfrową rozrywkę.", :price => 749, :count => 10, :photo_file_name => "459538.jpg", :photo_content_type => "image/jpeg", :photo_file_size => 9294, :photo_updated_at => "2011-01-10 19:26:36", :category_id => 2 )
Product.create( :name => "Microsoft Windows 7 Ultimate PL BOX", :body => "System Windows 7 Ultimate to najbardziej uniwersalna i zaawansowana wersja systemu Windows 7. Połączono w niej prostotę obsługi, funkcje rozrywki z wersji Home Premium oraz możliwości biznesowe wersji Professional, w tym możliwość uruchamiania wielu programów biznesowych przeznaczonych dla systemu Windows XP za pomocą narzędzia Windows XP Mode. Aby dodatkowo zwiększyć bezpieczeństwo, dane można szyfrować funkcją BitLocker i BitLocker To Go. Systemu można ponadto używać w języku wybranym spośród 35 dostępnych. Wszystko to znajdziesz w systemie Windows 7 Ultimate.", :price => 1219, :count => 32, :photo_file_name => "windows7ult.jpg", :photo_content_type => "image/jpeg", :photo_file_size => 66134, :photo_updated_at => "2011-01-10 19:27:07", :category_id => 2 )
Product.create( :name => "Microsoft Visual Studio Pro 2010 Win32 English BOX", :body => "System Windows 7 Ultimate to najbardziej uniwersalna i zaawansowana wersja systemu Windows 7. Połączono w niej prostotę obsługi, funkcje rozrywki z wersji Home Premium oraz możliwości biznesowe wersji Professional, w tym możliwość uruchamiania wielu programów biznesowych przeznaczonych dla systemu Windows XP za pomocą narzędzia Windows XP Mode. Aby dodatkowo zwiększyć bezpieczeństwo, dane można szyfrować funkcją BitLocker i BitLocker To Go. Systemu można ponadto używać w języku wybranym spośród 35 dostępnych. Wszystko to znajdziesz w systemie Windows 7 Ultimate.", :price => 3999, :count => 0, :photo_file_name => "msvs2010.jpg", :photo_content_type => "image/jpeg", :photo_file_size => 17107, :photo_updated_at => "2011-01-10 19:29:30", :category_id => 3 )
Product.create( :name => "ESET NOD32 Antivirus - Licencja na 1 rok", :body => "ESET NOD32 Antivirus jest nowoczesnym programem antywirusowym do ochrony przed wirusami oraz wszelkimi innymi zagrożeniami jak robaki internetowe, spyware, phishing i wiele innych. Wyjątkowa skuteczność programu w połączeniu z niespotykaną szybkością działania sprawia, że jest to idealne rozwiązanie dla firm jak i dla użytkowników domowych.", :price => 129.15, :count => 10, :photo_file_name => "eset-nod32-antivirus-4-0-box-1-stan-12m.jpg", :photo_content_type => "image/jpeg", :photo_file_size => 63709, :photo_updated_at => "2011-01-11 22:01:02", :category_id => 4 )

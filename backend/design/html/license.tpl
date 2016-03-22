{capture name=tabs}
		<li class="active"><a href="index.php?module=LicenseAdmin">Лицензия</a></li>
{/capture}

<!-- Основная форма -->
<form method=post id=product enctype="multipart/form-data">
<input type=hidden name="session_id" value="{$smarty.session.id}">
	<!-- Левая колонка свойств товара -->
	<div id="column_left">
 	
	<div class=block>
		{if $license->valid}	
		<h2 style='color:green;'>Лицензия действительна {if $license->expiration != '*'}до {$license->expiration}{/if} для домен{$license->domains|count|plural:'а':'ов'} {foreach $license->domains as $d}{$d}{if !$d@last}, {/if}{/foreach}</h2>
		{else}
		<h2 style='color:red;'>Лицензия недействительна</h2>
		{/if}
		<textarea name=license style='width:420px; height:100px;'>{$config->license|escape}</textarea>
		</div>
		<div class=block>	
		<input class="button_green button_save" type="submit" name="" value="Сохранить" />
		<a href='http://okay-cms.com/check?domain={$smarty.server.HTTP_HOST|escape}'>Проверить лицензию</a>
		</div>
	</div>

	<div id="column_right">
		<div class=block>
		<h2>Лицензионное соглашение</h2>

<textarea style='width:420px; height:250px;'>
   1. Общие положения

1.1. Настоящее Лицензионное соглашение (далее Соглашение) является публичной офертой и заключается между пользователем программного продукта "OkayCMS" (далее Пользователь) и обществом с ограниченной ответственностью "Шифтрезет" (далее Разработчик).
1.2. Перед использованием Продукта внимательно ознакомьтесь с условиями данного Соглашения. В случае несогласия, Пользователь вправе отказаться от услуг, предоставляемых разработчиком и не использовать программный продукт OkayCMS.
1.3. Продукт содержит компоненты, на которые не распространяется действие настоящего Соглашения. Эти компоненты предоставляются и распространяются свободно в соответствии с собственными лицензиями. Таковыми компонентами являются:

- Визуальный редактор TinyMCE;
- Файловый менеджер SMExplorer;
- Менеджер изображений SMImage;
- Редактор кода Codemirror;
- Скрипт просмотра изображений EnlargeIt.
2. Основные термины настоящего Соглашения

2.1. Продукт — программа для ЭВМ "OkayCMS", (гос. регистрация: №64240) предназначенная для управления web-сайтами.
2.2. Экземпляр Продукта — копия программы "OkayCMS", включающая в себя файлы с программным кодом и документацию по использованию Продукта в виде комментариев к исходному коду.
2.3. Сайт — совокупность одного Экземпляра Продукта и базы данных.
2.4. Дополнение для Продукта — дополнительный программный код, расширяющий функциональные возможности продукта.
2.5. Шаблон для Продукта — набор программных файлов, изменяющий внешний вида сайта и взаимодействие с пользовательскими элементами.
2.6. Лицензионный ключ — последовательность символов, позволяющая использовать продукт без ограничений после окончания тридцатидневного тестового периода.
3. Предмет Соглашения

3.1. Предметом настоящего Соглашения является право использования одного Экземпляра Продукта "OkayCMS", предоставляемое Пользователю Разработчиком, в порядке и на условиях, установленных настоящим Соглашением.
3.2. Соглашение не предоставляет право собственности на Продукт и его Дополнения, а только право использования Экземпляра Продукта и его Дополнений в соответствии с условиями настоящего Соглашения.
3.3 Пользователь является ответственным за соблюдение технических требований Продукта, необходимых для его установки и работы.
3.4. Приобретая полную версию Продукта, Пользователь подтверждает факт полной работоспособности бесплатной и полной 30-ти дневной версии OkayCMS на веб-сервере его хостинг-провайдера и полное его соответствие техническим требования продукта.
3.5. Пользователь соглашается с тем, что никакая система несвободна от непредвиденных ошибок.
3.6. Подтверждением полного согласия с условиями данного соглашения является факт скачивания файлов Продукта и произведение установки продукта на веб-сервер Пользователя.
4. Авторские права

4.1. Продукт "OkayCMS" является интеллектуальной собственностью ООО "Шифтрезет".
4.2. Всеми правами собственности и авторскими правами на Продукт "OkayCMS", включая документацию и исходный текст, обладает юридическое лицо ООО "Шифтрезет".
4.3. Продукт защищен законом Украины “Об авторском праве и сопредельном праве”, а также международными договорами.
4.4. В случае нарушения авторских прав предусматривается ответственность в соответствии с действующим законодательством Украины.
4.5 Нарушением авторских прав является удаление любой информации о правообладателе из панели управления сайтом и файлов программы, а также выдача продукта за собственный, с целью получения материального вознаграждения от третьих лиц.
5. Условия использования Продукта

5.1. Запрещается удалять любую информацию об авторских правах в административной части сайта и файлах продукта. Установленный в магазине логотип с символикой OkayCMS – можно изменить в настройках.
5.2. Настоящее Соглашение предоставляет право установки Экземпляра Продукта на веб-сервер Пользователя.
5.3. Пользователь может свободно использовать бесплатную версию продукта "OkayCMS", неограниченным количеством экземпляров, соблюдая условия настоящего Соглашения.
5.4. Пользователь бесплатной версии Продукта обязан установить ссылку на сайт разработчика " OkayCMS", в коде шаблона сайта, таким образом, чтобы она была видна и доступна на всех страницах сайта, а также была кликабельна и не защищена от индексирования поисковыми системами.
5.5. При наличии Лицензионного ключа, пользователь получает право убрать ссылку на сайт разработчика из шаблона.
5.6. Пользователь имеет право приобрести платную полную версию продукта, оформив и оплатив заказ на сайте разработчика. После оплаты в автоматическом режиме пользователю будет выслан персональный 32-х значный лицензионный ключ для получения полного функционала.
5.7. Один лицензионный ключ возможно активировать только к одному доменному имени.
5.8. Пользователь вправе запросить у Разработчика услугу по переносу ключа на другой домен. Чтобы поменять привязку ключа к новому доменному имени сайта, Пользователю необходимо:
- написать в техническую поддержку проекта заявку на смену привязки домена через форму обратной связи;
- указать в заявке причину, по которой происходит изменение домена сайта, а также номер ключа, старый и новый домены.
Для принятия положительного решения о смене привязки необходимо чтобы на старом домене не использовалась лицензионная версия движка.
5.9. Пользователю разрешается переносить Систему на любую хостинговую площадку, соответствующую минимальным системным требованиям Продукта.
5.10. После переноса полной версии продукта на другую хостинговую площадку её следует полностью удалить с исходной хостинговой площадки.
5.11. Пользователь может изменять, добавлять или удалять любые файлы скачанного Экземпляра Продукта в соответствии с Украинским законодательством об авторском праве. В этом случае Разработчик не гарантирует бесперебойную работу программы.
5.12. Пользователь может Самостоятельно, или с помощью третьих лиц разрабатывать Дополнения для Продукта и использовать их. При этом ООО "Шифтрезет" не несет никакой ответственности за совместимость данных дополнений с Продуктом и не может гарантировать стабильность работы Продукта при использовании сторонних дополнений.
5.13. Переход с более ранней бесплатной версии на более новую бесплатную версию осуществляется в ручном режиме по инициативе пользователя.
5.14. При переходе с бесплатной версии на полную версию Продукта, все настройки и содержание каталога, сохраняются.
5.15. Дополнения, приобретенные из каталога на нашем сайте, гарантированно работоспособны только для последней той версии OkayCMS, которая указана в описании дополнения. Совместимость работы со старыми версиями Продукта не гарантирована.
6. Гарантии

6.1. Продукт предназначается и предоставляется в качестве системы управления сайтом, в том состоянии, в котором он находится, со всеми недостатками, которые могут быть выявлены при эксплуатации. Пользователь соглашается с тем, что никакая система несвободна от непредвиденных ошибок.
6.3. Разработчик гарантирует, что все найденные ошибки будут исправлены в последующих версиях продукта.
6.4. Разработчик гарантирует, оказание технической поддержки в соответствии с регламентом работы технической поддержки.
6.5. В случае выявления попыток изменения кода программного продукта или нарушения авторского права, гарантийные обязательства Разработчика аннулируются.
7. Ответственность сторон

7.1.За нарушение условий использования продукта, любая техническая поддержка со стороны Разработчика приостанавливается, до устранения нарушений. В случае обнаружения повторного факта нарушения, сайт Пользователя будет занесен в черный список.
7.2. За нарушение авторского права наступает ответственность, предусмотренная законодательством Украины.
7.3. ООО "Шифтрезет" как автор системы и партнеры данной системы ни при каких обстоятельствах не несут ответственности перед Пользователем Продукта или другими лицами за любые последствия, связанные с использованием или с невозможностью использования продукта, включая любой прямой или косвенный ущерб, любую потерю прибыли, информации или сбережений, штрафные санкции, разглашение или распространение закрытой информации, нарушение неприкосновенности частной жизни, а также прочие убытки имущественного или иного характера даже в случае предварительного уведомления о возможности такого ущерба, или по любому иску третьей стороны.
8. Регламент технической поддержки

8.1. Техническая поддержка оказывается всем Пользователям OkayCMS. Техническая поддержка оставляет за собой право запросить домен сайта, на котором возникают проблемы.
8.2. Обращения пользователей бесплатной версии обрабатываются только после того, как были обработаны все обращения пользователей платной версии.
8.3. Взаимодействие и общение с технической поддержкой осуществляется только посредствам обмена сообщениями через форму обратной связи;
8.4.В регламент технической поддержки не входит:
8.4.1.Консультирование по использованию CSS, HTML, Javascript, PHP и т.п
8.4.2.Перенос программного продукта с локального компьютера на хостинг и с хостинга на хостинг.
8.4.3.Обновление программного продукта.
8.4.4.Изменение макетов и разработка страниц сайта.
8.4.5.Интеграция программного продукта с внешними скриптами.
8.5. Время ответа на запрос в поддержку составляет от 1 до 3-х рабочих дней с учетом рабочего времени с 10.00 до 19.00 по МСК.
9. Возврат продукта

9.1. Возврат денежных средств, потраченных на приобретение лицензионного ключа в течение 7 семи дней возможен до факта получения полной версии продукта.
9.2. В соответствии с законодательством Украины покупатель вправе отказаться от заказанного товара в любое время до его получения. Возврат товара после получения невозможен в связи с тем, что покупатель приобретает право на использование, которое относится к объектам авторских прав и охраняется, как литературное произведение. В свою очередь, непериодические издания в соответствии с Законом о защите прав потребителей относятся к перечню непродовольственных товаров, не подлежащих возврату или обмену.
9.3. Фактом получения товара считается генерация регистрационного ключа и скачивание полной версии программного продукта. Сведения о генерации регистрационных ключей и скачке файлов сохраняются на сервере Разработчика. В соответствии с Законом о защите прав потребителей дистанционный способ продажи исключает возможность непосредственного ознакомления потребителя с товаром либо образцом товара.
9.4. В связи с тем, что для ознакомления с продуктом покупателю предоставляется на безвозмездной основе демонстрационная 30-дневная версия, продажа полной версии программного обеспечения на настоящем веб-сайте http://okay-cms.com не квалифицируется как дистанционный способ продажи, и не предусматривает право на возврат товара.
10. Изменение и расторжение Соглашения

10.1. Разработчик оставляет за собой право внести изменения в настоящее соглашение.
10.2. В случае невыполнения пользователем одного из вышеуказанных положений, ООО "Шифтрезет" имеет право в одностороннем порядке расторгнуть настоящее соглашение, без уведомления об этом Пользователя.
10.3. При расторжении соглашения Пользователь обязан прекратить использование Продукта, полностью удалить экземпляр Продукта и уничтожить все копии Продукта и каких-либо его составляющих.
10.4. Пользователь может расторгнуть данное соглашение в любое время, полностью удалив Экземпляр Продукта, а также все копии Продукта и его компонентов.
10.5. Настоящее Лицензионное соглашение распространяется также на все новые версии Продукта.
</textarea>
		</div> 
	</div>
	<!-- Левая колонка свойств товара (The End)--> 
	
		
</form>
<!-- Основная форма (The End) -->

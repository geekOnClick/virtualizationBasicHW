Вопрос: сколькими способами можно посмотреть содержимое конкретного файла в контейнере?
Ответ: 
1. Через docker exec:
   Запускается внутри работающего контейнера с помощью docker exec:

   docker exec <container_id_or_name> cat /path/to/file
   
2. Через docker cp:
   Нужно скопировать файл из контейнера на хост-машину и затем просмотреть его:

   docker cp <container_id_or_name>:/path/to/file /local/path
   cat /local/path/file
   
3. Через docker exec с текстовым редактором:
 
   docker exec -it <container_id_or_name> vi /path/to/file
   
4. Через docker attach:
   Если контейнер предоставляет оболочку, можно подключиться к ней с помощью docker attach и использовать команды оболочки для просмотра файла. 

5. Через контейнерный лог (если файл логируется):
   
   docker logs <container_id_or_name>
   
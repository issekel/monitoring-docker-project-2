# monitoring-docker-project-2
Данный мониторинг используется на проектах, где сбор, хранение и вычисление данных происходит преимущественно на одной ноде.<br>
Деплой осуществляется с помощью данной  <a href="https://github.com/issekel/ansible_roles/tree/main/docker-compose-run">ansible role</a><br>
Все prometheus rules переработы по severity, изменены warning и critical. Алерты с critical отправляются с помощью webhook в мессенджер zulip, warning отправляются в slack. Ко всем алертам будет добавлен label с именем проекта и ссылка на prometheus.<br>
<br>
![изображение](https://user-images.githubusercontent.com/99316541/195997242-6cf51ca2-b4df-4382-89ef-2eac572a9524.png)<br>
<br>
Отслеживаются все показатели hardware node, containers, сбора логов. В качестве источника данных для prometheus используется consul, для loki используется fluent-bit с методом tail, при изменении стандартного пути записи логов (/var/lib/docker/containers) создайте символическую ссылку.<br>
Добавлены дашборды со сменой источников данных проектов, если используется центральная grafana.

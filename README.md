### Development environment:
1. Source control : GIT + GITLAB/GITHUB
2. Development : Python/Javascript on Emacs/Atom
3. Virtualization : Vagrant + Virtualbox
4. Continuous integration : Jenkins
5. Containers : Docker
6. OS Host: Debian 8.2.0/CoreOS
7. OS Container: Debian/Alpine



3. Logging
4. Monitoring
6. Documentation
7. Testing
10. Deploying
11. Versioning
12. Project managing
13. Product backlog
14. Bug tracking
15. Communication tools

=============================

Как оно все будет работать:

когда человек хочет начать делать проект, то он качает devenv Vagrant.
Там стоит docker+compose, git, gitlab, jenkins CI,


работаешь на своей машине и делаешь пуш в локальный гитлаб. Как только ревизия появляется с гитлабе, дженкинс качает ее и пытается сбилдить.

=============================

Всем привет,

Илья: Вчера исправил реконнект в игру, обработал статусы ответа сервера, освободил флешку от критических багов. Сегодня выпилит логотипы, доделает отправку выбранных линий на сервер, начнет новый арт для UI.

Антон: Вчера я закончил с тестами на состояния игры. Сегодня я буду настраивать на своей машине development environment с CI сервером и автобилдами. Также, сегодня с Ильей зальем и протестируем новую флешку.








{"status": {"message": null, "code": "ERROR"}, "denominator": 1, "gifts": {"current": null, "available": []}, "session": "8320b712742311e5981436963ae57158", "command": "play", "context": null, "request_id": "c034dccf4f26427d3a9b3ecae29af065", "balance": {"version": 265, "value": 15340}}


Customize with Symfony
--------
[EC-CUBE4 Document][a]

[a]:https://doc4.ec-cube.net/customize_symfony
[Event Dispatcher (Symfony)][b]

[b]:https://symfony.com/doc/current/event_dispatcher.html

### Symfony Event

~~~~~php
<?php

namespace Customize\EventListener;

use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpKernel\Event\FilterResponseEvent;
use Symfony\Component\HttpKernel\KernelEvents;

class HelloListener implements EventSubscriberInterface
{
    public function onResponse(FilterResponseEvent $event)
    {
        echo 'hello world';　// Method 詳細
    }

    public static function getSubscribedEvents()
    {
        return [
            KernelEvents::RESPONSE => 'onResponse', // Event名・Method 追加
        ];
    }
}
~~~~~

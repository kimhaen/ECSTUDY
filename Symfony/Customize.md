
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

 ### Use Entity Manager in Listener

[Ref][s]

[s]:https://stackoverflow.com/questions/27392739/symfony2-how-to-get-entity-manager-in-listener
 ~~~~php

namespace MPN\CRMBundle\Manager;

use Doctrine\ORM\EntityManager;
use MPN\CRMBundle\Entity\Analytics;
use MPN\CRMBundle\Service\DateTimeBuilder;

class AnalyticsManager
{
    /**
     * @var EntityManager
     */
    public $em;

    /**
     * @var DateTimeBuilder
     */
    private $dateTimeBuilder;

    /**
     * @var array
     */
    private $analytics;

    public function __construct(EntityManager $em, DateTimeBuilder $dateTimeBuilder)
    {
        $this->em = $em;　 // EntityManager
        $this->dateTimeBuilder = $dateTimeBuilder;
        $this->setup();
    }

    /**
     * Flushes the data to the database.
     *
     * @return void
     */
    public function save()
    {
        $this->em->flush();  // 保存
    }
}

 ~~~~

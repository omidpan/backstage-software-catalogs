apiVersion: backstage.io/v1alpha1
kind: API
metadata:
  name: openapi-kafka-rest
  description: API using Nexus SDK to pub/sub events for Kafka
  namespace: TSG  
  tags:
    - Kafka
    - pubsub
    - rest
  links:
    - url: https://scm.eng.hmhco.com/panahio/classcraft-integration-svc/tree/main/build/src/main/java/com/hmhco/classcraft/integration/nexus
      title: GitHub Repo
      icon: github
spec:
  type: openapi
  lifecycle: production
  owner: theme4
  definition:
    $text: ./hasura-action-oas.yaml
# apiVersion: backstage.io/v1alpha1
# kind: API
# metadata:
#   name: endpoint-nexus-rest
#   namespace: TSG  
#   description: nexus API using Nexus SDK and  allows you to subscribe and publish events to Nexus Kafka Broker
#   links:
#     - url: https://scm.eng.hmhco.com/panahio/classcraft-integration-svc/tree/main/build/src/main/java/com/hmhco/classcraft/integration/nexus
#       title: github Repo
#       icon: github
#   tags:
#     - Kafka
#     - pubsub
# spec:
#   type: openapi
#   lifecycle: production
#   owner: theme4
#   definition:
#     $text: ./hasura-action-oas.yaml  
#   # definition: |
#   #   asyncapi: 3.0.0
#   #   info:
#   #     title: Nexus Kafka API
#   #     version: 1.0.0
#   #     description: "TBD"
#   #     license:
#   #       name: Apache 2.0
#   #       url: 'https://www.apache.org/licenses/LICENSE-2.0'
#   #   defaultContentType: application/json
#   #   servers:
#   #     production:
#   #       host: 'hmh.nexus.co:{port}'
#   #       protocol: mqtt
#   #       description: Test broker
#   #       variables:
#   #         port:
#   #           description: Secure connection (TLS) is available through port 9993.
#   #           default: '9993'
#   #           enum:
#   #             - '9993'
#   #             - '1883'
#   #       security:
#   #         - $ref: '#/components/securitySchemes/apiKey'
#   #         - type: oauth2
#   #           description: Flows to support OAuth 2.0
#   #           flows:
#   #             implicit:
#   #               authorizationUrl: 'https://authserver.example/auth'
#   #               availableScopes:
#   #                 'streetlights:on': Ability to switch lights on
#   #                 'streetlights:off': Ability to switch lights off
#   #                 'streetlights:dim': Ability to dim the lights
#   #             password:
#   #               tokenUrl: 'https://authserver.example/token'
#   #               availableScopes:
#   #                 'streetlights:on': Ability to switch lights on
#   #                 'streetlights:off': Ability to switch lights off
#   #                 'streetlights:dim': Ability to dim the lights
#   #             clientCredentials:
#   #               tokenUrl: 'https://authserver.example/token'
#   #               availableScopes:
#   #                 'streetlights:on': Ability to switch lights on
#   #                 'streetlights:off': Ability to switch lights off
#   #                 'streetlights:dim': Ability to dim the lights
#   #             authorizationCode:
#   #               authorizationUrl: 'https://authserver.example/auth'
#   #               tokenUrl: 'https://authserver.example/token'
#   #               refreshUrl: 'https://authserver.example/refresh'
#   #               availableScopes:
#   #                 'streetlights:on': Ability to switch lights on
#   #                 'streetlights:off': Ability to switch lights off
#   #                 'streetlights:dim': Ability to dim the lights
#   #           scopes:
#   #             - 'streetlights:on'
#   #             - 'streetlights:off'
#   #             - 'streetlights:dim'
#   #         - $ref: '#/components/securitySchemes/openIdConnectWellKnown'
#   #       tags:
#   #         - name: 'env:production'
#   #           description: This environment is meant for production use case
#   #         - name: 'kind:remote'
#   #           description: This server is a remote server. Not exposed by the application
#   #         - name: 'visibility:public'
#   #           description: This resource is public and available to everyone
#   #   channels:
#   #     lightingMeasured:
#   #       address: 'smartylighting/streetlights/1/0/event/{streetlightId}/lighting/measured'
#   #       messages:
#   #         lightMeasured:
#   #           $ref: '#/components/messages/lightMeasured'
#   #       description: The topic on which measured values may be produced and consumed.
#   #       parameters:
#   #         streetlightId:
#   #           $ref: '#/components/parameters/streetlightId'
#   #     lightTurnOn:
#   #       address: 'smartylighting/streetlights/1/0/action/{streetlightId}/turn/on'
#   #       messages:
#   #         turnOn:
#   #           $ref: '#/components/messages/turnOnOff'
#   #       parameters:
#   #         streetlightId:
#   #           $ref: '#/components/parameters/streetlightId'
#   #     lightTurnOff:
#   #       address: 'smartylighting/streetlights/1/0/action/{streetlightId}/turn/off'
#   #       messages:
#   #         turnOff:
#   #           $ref: '#/components/messages/turnOnOff'
#   #       parameters:
#   #         streetlightId:
#   #           $ref: '#/components/parameters/streetlightId'
#   #     lightsDim:
#   #       address: 'smartylighting/streetlights/1/0/action/{streetlightId}/dim'
#   #       messages:
#   #         dimLight:
#   #           $ref: '#/components/messages/dimLight'
#   #       parameters:
#   #         streetlightId:
#   #           $ref: '#/components/parameters/streetlightId'
#   #   operations:
#   #     receiveLightMeasurement:
#   #       action: receive
#   #       channel:
#   #         $ref: '#/channels/lightingMeasured'
#   #       summary: >-
#   #         Inform about environmental lighting conditions of a particular
#   #         streetlight.
#   #       traits:
#   #         - $ref: '#/components/operationTraits/mqtt'
#   #       messages:
#   #         - $ref: '#/channels/lightingMeasured/messages/lightMeasured'
#   #     turnOn:
#   #       action: send
#   #       channel:
#   #         $ref: '#/channels/lightTurnOn'
#   #       traits:
#   #         - $ref: '#/components/operationTraits/mqtt'
#   #       messages:
#   #         - $ref: '#/channels/lightTurnOn/messages/turnOn'
#   #     turnOff:
#   #       action: send
#   #       channel:
#   #         $ref: '#/channels/lightTurnOff'
#   #       traits:
#   #         - $ref: '#/components/operationTraits/mqtt'
#   #       messages:
#   #         - $ref: '#/channels/lightTurnOff/messages/turnOff'
#   #     dimLight:
#   #       action: send
#   #       channel:
#   #         $ref: '#/channels/lightsDim'
#   #       traits:
#   #         - $ref: '#/components/operationTraits/mqtt'
#   #       messages:
#   #         - $ref: '#/channels/lightsDim/messages/dimLight'
#   #   components:
#   #     messages:
#   #       lightMeasured:
#   #         name: lightMeasured
#   #         title: Light measured
#   #         summary: >-
#   #           Inform about environmental lighting conditions of a particular
#   #           streetlight.
#   #         contentType: application/json
#   #         traits:
#   #           - $ref: '#/components/messageTraits/commonHeaders'
#   #         payload:
#   #           $ref: '#/components/schemas/lightMeasuredPayload'
#   #       turnOnOff:
#   #         name: turnOnOff
#   #         title: Turn on/off
#   #         summary: Command a particular streetlight to turn the lights on or off.
#   #         traits:
#   #           - $ref: '#/components/messageTraits/commonHeaders'
#   #         payload:
#   #           $ref: '#/components/schemas/turnOnOffPayload'
#   #       dimLight:
#   #         name: dimLight
#   #         title: Dim light
#   #         summary: Command a particular streetlight to dim the lights.
#   #         traits:
#   #           - $ref: '#/components/messageTraits/commonHeaders'
#   #         payload:
#   #           $ref: '#/components/schemas/dimLightPayload'
#   #     schemas:
#   #       lightMeasuredPayload:
#   #         type: object
#   #         properties:
#   #           lumens:
#   #             type: integer
#   #             minimum: 0
#   #             description: Light intensity measured in lumens.
#   #           sentAt:
#   #             $ref: '#/components/schemas/sentAt'
#   #       turnOnOffPayload:
#   #         type: object
#   #         properties:
#   #           command:
#   #             type: string
#   #             enum:
#   #               - 'on'
#   #               - 'off'
#   #             description: Whether to turn on or off the light.
#   #           sentAt:
#   #             $ref: '#/components/schemas/sentAt'
#   #       dimLightPayload:
#   #         type: object
#   #         properties:
#   #           percentage:
#   #             type: integer
#   #             description: Percentage to which the light should be dimmed to.
#   #             minimum: 0
#   #             maximum: 100
#   #           sentAt:
#   #             $ref: '#/components/schemas/sentAt'
#   #       sentAt:
#   #         type: string
#   #         format: date-time
#   #         description: Date and time when the message was sent.
#   #     securitySchemes:
#   #       apiKey:
#   #         type: apiKey
#   #         in: user
#   #         description: Provide your API key as the user and leave the password empty.
#   #       supportedOauthFlows:
#   #         type: oauth2
#   #         description: Flows to support OAuth 2.0
#   #         flows:
#   #           implicit:
#   #             authorizationUrl: 'https://authserver.example/auth'
#   #             availableScopes:
#   #               'streetlights:on': Ability to switch lights on
#   #               'streetlights:off': Ability to switch lights off
#   #               'streetlights:dim': Ability to dim the lights
#   #           password:
#   #             tokenUrl: 'https://authserver.example/token'
#   #             availableScopes:
#   #               'streetlights:on': Ability to switch lights on
#   #               'streetlights:off': Ability to switch lights off
#   #               'streetlights:dim': Ability to dim the lights
#   #           clientCredentials:
#   #             tokenUrl: 'https://authserver.example/token'
#   #             availableScopes:
#   #               'streetlights:on': Ability to switch lights on
#   #               'streetlights:off': Ability to switch lights off
#   #               'streetlights:dim': Ability to dim the lights
#   #           authorizationCode:
#   #             authorizationUrl: 'https://authserver.example/auth'
#   #             tokenUrl: 'https://authserver.example/token'
#   #             refreshUrl: 'https://authserver.example/refresh'
#   #             availableScopes:
#   #               'streetlights:on': Ability to switch lights on
#   #               'streetlights:off': Ability to switch lights off
#   #               'streetlights:dim': Ability to dim the lights
#   #       openIdConnectWellKnown:
#   #         type: openIdConnect
#   #         openIdConnectUrl: 'https://authserver.example/.well-known'
#   #     parameters:
#   #       streetlightId:
#   #         description: The ID of the streetlight.
#   #     messageTraits:
#   #       commonHeaders:
#   #         headers:
#   #           type: object
#   #           properties:
#   #             my-app-header:
#   #               type: integer
#   #               minimum: 0
#   #               maximum: 100
#   #     operationTraits:
#   #       mqtt:
#   #         bindings:
#   #           mqtt:
#   #             qos: 1
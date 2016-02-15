describe 'leafletEventManager', ->

    beforeEach ->
        module('ui-leaflet')
        inject (_$compile_, _$rootScope_, _leafletEventManager_) ->
            @$compile = _$compile_
            @$rootScope = _$rootScope_
            @subject = _leafletEventManager_

    it 'exists', ->
        expect(@subject).toBeDefined()

    it 'singleton', ->
        secondInstance = null
        inject (_leafletEventManager_) ->
            secondInstance = _leafletEventManager_
        expect(secondInstance).toEqual(@subject)

    it 'has a prototype', ->
        console.log @subject
        expect(@subject.addEventListener).toBeDefined()

/*******************************************************************************
 *
 *  Copyright 2011 - Sardegna Ricerche, Distretto ICT, Pula, Italy
 *
 * Licensed under the EUPL, Version 1.1.
 * You may not use this work except in compliance with the Licence.
 * You may obtain a copy of the Licence at:
 *
 *  http://www.osor.eu/eupl
 *
 * Unless required by applicable law or agreed to in  writing, software distributed under the Licence is distributed on an "AS IS" basis,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the Licence for the specific language governing permissions and limitations under the Licence.
 * In case of controversy the competent court is the Court of Cagliari (Italy).
 *******************************************************************************/

/*
 * @class Countries
 * @parent Backbone.Collection
 * @constructor
 * Collection for Countries.
 * @tag models
 * @author LabOpenSource
 */

window.TourismTypes = Backbone.Collection.extend({
    model: TourismType,
    initialize: function (models, options) {
    	this.fetch({
    		async:false, //Tourism types are important!!! Waiting for...
    		error: function() {
    			$.jGrowl($.i18n("seriousErrorDescr") + '', { header: this.alertOK,sticky: true });
    		}
    	});
    },
    url: function () {
        return this.baseUrl;
    },
    baseUrl: 'rest/tourismTypes/',
});

window.AllTourismTypes = new TourismTypes([],Entity.idStructure);
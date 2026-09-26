package com.narvii.logging;

import android.text.TextUtils;
import android.view.View;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.service.LogEventService;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class LogEvent {
    public static final String OBJECT_NDCID = "objectNdcId";
    public String actSemantic;
    public String actType;
    public String eventArea;
    public String eventId;
    public String eventPage;
    public String eventSubArea;
    public String eventType;
    public ObjectNode extraInfo;
    public NVObject nvObject;
    public String objectId;
    public String objectSubType;
    public String objectType;
    public PageRefererInfo pageRefererInfo;
    public String parentId;
    public String pvId;
    public String reqId;
    private boolean sent;
    public String strategyInfo;
    public int screenPos = -1;
    public int ndcId = -1;
    public boolean allowNoPage = false;
    public boolean sendToThirdParty = false;
    public boolean onlyInternalLogging = false;

    public static class Builder {
        LogEvent logEvent;
        NVContext nvContext;

        private Builder actSemantic(String str) {
            this.logEvent.actSemantic = str;
            return this;
        }

        public Builder actType(String str) {
            this.logEvent.actType = str;
            return this;
        }

        public Builder area(Area area) {
            if (area == null) {
                return this;
            }
            this.logEvent.eventArea = area.getAreaName();
            return this;
        }

        public boolean containExtraKey(String str) {
            ObjectNode objectNode;
            return (str == null || (objectNode = this.logEvent.extraInfo) == null || objectNode.get(str) == null) ? false : true;
        }

        public LogEvent getLogEvent() {
            return this.logEvent;
        }

        public Builder objectId(String str) {
            this.logEvent.objectId = str;
            return this;
        }

        public Builder page(Page page) {
            if (page == null) {
                return this;
            }
            this.logEvent.eventPage = page.getPageName();
            return this;
        }

        public Builder actClick() {
            return actType(ActType.click);
        }

        public Builder actSemantic(ActSemantic actSemantic) {
            return actSemantic == null ? this : actSemantic(actSemantic.name());
        }

        public Builder actType(ActType actType) {
            return actType(actType.name());
        }

        public Builder allowNoPage() {
            this.logEvent.allowNoPage = true;
            return this;
        }

        public Builder appEvent() {
            this.logEvent.eventType = LogEventType.AppEvent.name();
            allowNoPage();
            return this;
        }

        public Builder area(String str) {
            this.logEvent.eventArea = str;
            return this;
        }

        public Builder areaIfNotSet(String str) {
            if (!ActType.pageView.name().equals(this.logEvent.actType) && this.logEvent.eventArea == null) {
                area(str);
            }
            return this;
        }

        public LogEvent build() {
            String str;
            String str2;
            String str3;
            NVContext nVContext = this.nvContext;
            if (nVContext != null) {
                LogUtils.completeLogEvent(nVContext, this);
                LogContextInfo logContextInfo = LogUtils.getLogContextInfo(this.nvContext);
                LogEvent logEvent = this.logEvent;
                if (logEvent.eventPage == null) {
                    logEvent.eventPage = logContextInfo.pageName;
                }
                if (logEvent.pvId == null) {
                    logEvent.pvId = logContextInfo.pvId;
                }
                if (logEvent.eventArea == null && (str2 = logContextInfo.areaName) != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    if (this.logEvent.eventSubArea != null) {
                        str3 = "-" + this.logEvent.eventSubArea;
                    } else {
                        str3 = "";
                    }
                    sb.append(str3);
                    logEvent.eventArea = sb.toString();
                }
                LogEvent logEvent2 = this.logEvent;
                if (logEvent2.strategyInfo == null) {
                    logEvent2.strategyInfo = logContextInfo.strategyInfo;
                }
                if (logEvent2.pageRefererInfo == null) {
                    logEvent2.pageRefererInfo = logContextInfo.pageRefererInfo;
                }
                if (logEvent2.ndcId == -1) {
                    this.logEvent.ndcId = ((ConfigService) this.nvContext.getService("config")).getCommunityId();
                }
            }
            LogEvent logEvent3 = this.logEvent;
            if (logEvent3.eventArea == null && (str = logEvent3.eventSubArea) != null) {
                logEvent3.eventArea = str;
            }
            return logEvent3;
        }

        public Builder extraInfo(ObjectNode objectNode) {
            this.logEvent.extraInfo = objectNode;
            return this;
        }

        public Builder extraParam(String str, Object obj) {
            LogEvent logEvent = this.logEvent;
            if (logEvent.extraInfo == null) {
                logEvent.extraInfo = JacksonUtils.createObjectNode();
            }
            ObjectNode objectNode = this.logEvent.extraInfo;
            if (obj instanceof Integer) {
                objectNode.put(str, ((Integer) obj).intValue());
            } else if (obj instanceof Long) {
                objectNode.put(str, ((Long) obj).longValue());
            } else if (obj instanceof Float) {
                objectNode.put(str, ((Float) obj).floatValue());
            } else if (obj instanceof Double) {
                objectNode.put(str, ((Double) obj).doubleValue());
            } else if (obj instanceof Boolean) {
                objectNode.put(str, ((Boolean) obj).booleanValue());
            } else if (obj instanceof JsonNode) {
                objectNode.put(str, (JsonNode) obj);
            } else if (obj == null) {
                objectNode.putNull(str);
            } else {
                objectNode.put(str, String.valueOf(obj));
            }
            return this;
        }

        public Builder extraParamIfNotNull(String str, Object obj) {
            if (obj == null) {
                return this;
            }
            extraParam(str, obj);
            return this;
        }

        public Builder impression() {
            actType(ActType.impression);
            actSemantic(ActSemantic.objectImpression);
            return this;
        }

        public Builder impressionQuit() {
            actType(ActType.impression);
            actSemantic(ActSemantic.objectImpressionQuit);
            return this;
        }

        public Builder ndcId(int i10) {
            this.logEvent.ndcId = i10;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder object(NVObject nVObject) {
            if (nVObject == 0) {
                return this;
            }
            LogEvent logEvent = this.logEvent;
            logEvent.nvObject = nVObject;
            logEvent.objectId = nVObject.id();
            ObjectType objectType = LogUtils.getObjectType(nVObject);
            this.logEvent.objectType = objectType != null ? objectType.name() : null;
            ObjectSubType objectSubType = LogUtils.getObjectSubType(nVObject);
            this.logEvent.objectSubType = objectSubType != null ? objectSubType.name() : null;
            if (nVObject instanceof StrategyObject) {
                strategyInfo(((StrategyObject) nVObject).getStrategyInfo());
            }
            return this;
        }

        public Builder objectId(int i10) {
            return objectId(String.valueOf(i10));
        }

        public Builder objectIfNotNull(NVObject nVObject) {
            return nVObject == null ? this : object(nVObject);
        }

        public Builder objectInfo(ObjectInfo objectInfo) {
            if (objectInfo == null) {
                return this;
            }
            screenPos(objectInfo.screenPos);
            object(objectInfo.object);
            if (objectInfo.getExtraInfo() != null) {
                for (String str : objectInfo.getExtraInfo().keySet()) {
                    if (str instanceof String) {
                        extraParam(str, objectInfo.extraHashMap.get(str));
                    }
                }
            }
            return this;
        }

        public Builder objectSubType(ObjectSubType objectSubType) {
            if (objectSubType == null) {
                this.logEvent.objectSubType = null;
                return this;
            }
            this.logEvent.objectSubType = objectSubType.name();
            return this;
        }

        public Builder objectType(ObjectType objectType) {
            if (objectType == null) {
                this.logEvent.objectType = null;
                return this;
            }
            this.logEvent.objectType = objectType.name();
            return this;
        }

        public Builder onlyInternalLogging() {
            this.logEvent.onlyInternalLogging = true;
            return this;
        }

        public Builder page(String str) {
            this.logEvent.eventPage = str;
            return this;
        }

        public Builder pageRefererInfo(PageRefererInfo pageRefererInfo) {
            this.logEvent.pageRefererInfo = pageRefererInfo;
            return this;
        }

        public Builder pageViewEvent() {
            this.logEvent.eventType = LogEventType.PageViewEvent.name();
            return this;
        }

        public Builder pvId(String str) {
            this.logEvent.pvId = str;
            return this;
        }

        public Builder reqId(String str) {
            this.logEvent.reqId = str;
            return this;
        }

        public Builder screenPos(int i10) {
            this.logEvent.screenPos = i10;
            return this;
        }

        public LogEvent send() {
            LogEventService logEventService;
            if (this.logEvent.sent) {
                Log.e("log event has been sent");
                return this.logEvent;
            }
            build();
            NVContext nVContext = this.nvContext;
            if (nVContext != null && (logEventService = (LogEventService) nVContext.getService("logEvent")) != null) {
                logEventService.logEvent(this.logEvent);
            }
            this.logEvent.sent = true;
            return this.logEvent;
        }

        public Builder strategyInfo(String str) {
            this.logEvent.strategyInfo = str;
            return this;
        }

        public Builder subArea(String str) {
            this.logEvent.eventSubArea = str;
            return this;
        }

        public Builder toThirdParty() {
            this.logEvent.sendToThirdParty = true;
            return this;
        }

        public Builder type(LogEventType logEventType) {
            this.logEvent.eventType = logEventType.name();
            return this;
        }

        public Builder(NVContext nVContext) {
            this.nvContext = nVContext;
            if (nVContext instanceof LogProxyNVContext) {
                LogProxyNVContext logProxyNVContext = (LogProxyNVContext) nVContext;
                if (logProxyNVContext.getLogNVContext() != null) {
                    this.nvContext = logProxyNVContext.getLogNVContext();
                }
            }
            LogEvent logEvent = new LogEvent();
            this.logEvent = logEvent;
            logEvent.eventId = UUID.randomUUID().toString();
            this.logEvent.eventType = LogEventType.UserEvent.name();
        }
    }

    public static Builder clickBuilder(NVContext nVContext, ActSemantic actSemantic) {
        return clickBuilder(nVContext, null, actSemantic);
    }

    public static Builder clickWildcardBuilder(NVContext nVContext) {
        return clickBuilder(nVContext, null, ActSemantic.wildcard);
    }

    public static Builder builder(NVContext nVContext) {
        return new Builder(nVContext);
    }

    public static Builder clickBuilder(View view, ActSemantic actSemantic) {
        return clickBuilder(LogUtils.getPageContext(view), actSemantic);
    }

    public static Builder clickWildcardBuilder(NVContext nVContext, String str) {
        return clickWildcardBuilder(nVContext).area(str);
    }

    public String toString() {
        return TextUtils.join("|", new String[]{this.eventPage, this.eventArea, this.actType, this.actSemantic});
    }

    public static Builder clickBuilder(NVContext nVContext, ObjectInfo objectInfo, ActSemantic actSemantic) {
        Builder builder = new Builder(nVContext);
        builder.actClick();
        builder.actSemantic(actSemantic);
        builder.objectInfo(objectInfo);
        return builder;
    }

    public static Builder clickWildcardBuilder(View view, String str) {
        return clickWildcardBuilder(LogUtils.getPageContext(view)).area(str);
    }
}

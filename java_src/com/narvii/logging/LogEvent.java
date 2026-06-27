package com.narvii.logging;

import android.text.TextUtils;
import android.view.View;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.service.LogEventService;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.UUID;

/* loaded from: classes3.dex */
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

        public Builder(NVContext nVContext) {
            this.nvContext = nVContext;
            if (nVContext instanceof LogProxyNVContext) {
                LogProxyNVContext logProxyNVContext = (LogProxyNVContext) nVContext;
                if (logProxyNVContext.getLogNVContext() != null) {
                    this.nvContext = logProxyNVContext.getLogNVContext();
                }
            }
            this.logEvent = new LogEvent();
            this.logEvent.eventId = UUID.randomUUID().toString();
            this.logEvent.eventType = LogEventType.UserEvent.name();
        }

        public LogEvent getLogEvent() {
            return this.logEvent;
        }

        public Builder type(LogEventType logEventType) {
            this.logEvent.eventType = logEventType.name();
            return this;
        }

        public Builder appEvent() {
            this.logEvent.eventType = LogEventType.AppEvent.name();
            allowNoPage();
            return this;
        }

        public Builder onlyInternalLogging() {
            this.logEvent.onlyInternalLogging = true;
            return this;
        }

        public Builder pageViewEvent() {
            this.logEvent.eventType = LogEventType.PageViewEvent.name();
            return this;
        }

        public Builder page(Page page) {
            if (page == null) {
                return this;
            }
            this.logEvent.eventPage = page.getPageName();
            return this;
        }

        public Builder page(String str) {
            this.logEvent.eventPage = str;
            return this;
        }

        public Builder pvId(String str) {
            this.logEvent.pvId = str;
            return this;
        }

        public Builder area(Area area) {
            if (area == null) {
                return this;
            }
            this.logEvent.eventArea = area.getAreaName();
            return this;
        }

        public Builder subArea(String str) {
            this.logEvent.eventSubArea = str;
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

        public Builder reqId(String str) {
            this.logEvent.reqId = str;
            return this;
        }

        public Builder pageRefererInfo(PageRefererInfo pageRefererInfo) {
            this.logEvent.pageRefererInfo = pageRefererInfo;
            return this;
        }

        public Builder actType(String str) {
            this.logEvent.actType = str;
            return this;
        }

        public Builder actType(ActType actType) {
            return actType(actType.name());
        }

        public Builder actClick() {
            return actType(ActType.click);
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

        private Builder actSemantic(String str) {
            this.logEvent.actSemantic = str;
            return this;
        }

        public Builder actSemantic(ActSemantic actSemantic) {
            return actSemantic == null ? this : actSemantic(actSemantic.name());
        }

        public Builder extraInfo(ObjectNode objectNode) {
            this.logEvent.extraInfo = objectNode;
            return this;
        }

        public Builder allowNoPage() {
            this.logEvent.allowNoPage = true;
            return this;
        }

        public Builder extraParamIfNotNull(String str, Object obj) {
            if (obj == null) {
                return this;
            }
            extraParam(str, obj);
            return this;
        }

        public boolean containExtraKey(String str) {
            ObjectNode objectNode;
            return (str == null || (objectNode = this.logEvent.extraInfo) == null || objectNode.get(str) == null) ? false : true;
        }

        public Builder toThirdParty() {
            this.logEvent.sendToThirdParty = true;
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

        public Builder objectId(String str) {
            this.logEvent.objectId = str;
            return this;
        }

        public Builder strategyInfo(String str) {
            this.logEvent.strategyInfo = str;
            return this;
        }

        public Builder objectId(int i) {
            return objectId(String.valueOf(i));
        }

        public Builder objectType(ObjectType objectType) {
            if (objectType == null) {
                this.logEvent.objectType = null;
                return this;
            }
            this.logEvent.objectType = objectType.name();
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

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x001b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.narvii.logging.LogEvent.Builder object(com.narvii.model.NVObject r5) {
            /*
                r4 = this;
                if (r5 != 0) goto L3
                return r4
            L3:
                boolean r0 = r5 instanceof com.narvii.model.Blog
                if (r0 == 0) goto L1b
                r0 = r5
                com.narvii.model.Blog r0 = (com.narvii.model.Blog) r0
                boolean r1 = r0.isStory()
                if (r1 == 0) goto L1b
                com.narvii.model.Feed r1 = r0.refObject
                if (r1 == 0) goto L1b
                com.narvii.logging.LogEvent r2 = r4.logEvent
                java.lang.String r0 = r0.blogId
                r2.parentId = r0
                goto L1c
            L1b:
                r1 = r5
            L1c:
                com.narvii.logging.LogEvent r0 = r4.logEvent
                r0.nvObject = r1
                java.lang.String r2 = r1.id()
                r0.objectId = r2
                com.narvii.logging.ObjectType r0 = com.narvii.logging.LogUtils.getObjectType(r1)
                com.narvii.logging.LogEvent r2 = r4.logEvent
                r3 = 0
                if (r0 == 0) goto L34
                java.lang.String r0 = r0.name()
                goto L35
            L34:
                r0 = r3
            L35:
                r2.objectType = r0
                com.narvii.logging.ObjectSubType r0 = com.narvii.logging.LogUtils.getObjectSubType(r1)
                com.narvii.logging.LogEvent r1 = r4.logEvent
                if (r0 == 0) goto L43
                java.lang.String r3 = r0.name()
            L43:
                r1.objectSubType = r3
                boolean r0 = r5 instanceof com.narvii.model.StrategyObject
                if (r0 == 0) goto L52
                com.narvii.model.StrategyObject r5 = (com.narvii.model.StrategyObject) r5
                java.lang.String r5 = r5.getStrategyInfo()
                r4.strategyInfo(r5)
            L52:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.logging.LogEvent.Builder.object(com.narvii.model.NVObject):com.narvii.logging.LogEvent$Builder");
        }

        public Builder objectIfNotNull(NVObject nVObject) {
            return nVObject == null ? this : object(nVObject);
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

        public Builder screenPos(int i) {
            this.logEvent.screenPos = i;
            return this;
        }

        public Builder ndcId(int i) {
            this.logEvent.ndcId = i;
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
                LogEvent logEvent2 = this.logEvent;
                if (logEvent2.pvId == null) {
                    logEvent2.pvId = logContextInfo.pvId;
                }
                LogEvent logEvent3 = this.logEvent;
                if (logEvent3.eventArea == null && (str2 = logContextInfo.areaName) != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str2);
                    if (this.logEvent.eventSubArea != null) {
                        str3 = "-" + this.logEvent.eventSubArea;
                    } else {
                        str3 = "";
                    }
                    sb.append(str3);
                    logEvent3.eventArea = sb.toString();
                }
                LogEvent logEvent4 = this.logEvent;
                if (logEvent4.strategyInfo == null) {
                    logEvent4.strategyInfo = logContextInfo.strategyInfo;
                }
                LogEvent logEvent5 = this.logEvent;
                if (logEvent5.pageRefererInfo == null) {
                    logEvent5.pageRefererInfo = logContextInfo.pageRefererInfo;
                }
                if (this.logEvent.ndcId == -1) {
                    this.logEvent.ndcId = ((ConfigService) this.nvContext.getService("config")).getCommunityId();
                }
            }
            LogEvent logEvent6 = this.logEvent;
            if (logEvent6.eventArea == null && (str = logEvent6.eventSubArea) != null) {
                logEvent6.eventArea = str;
            }
            return this.logEvent;
        }
    }

    public String toString() {
        return TextUtils.join("|", new String[]{this.eventPage, this.eventArea, this.actType, this.actSemantic});
    }

    public static Builder builder(NVContext nVContext) {
        return new Builder(nVContext);
    }

    public static Builder clickWildcardBuilder(NVContext nVContext) {
        return clickBuilder(nVContext, null, ActSemantic.wildcard);
    }

    public static Builder clickWildcardBuilder(NVContext nVContext, String str) {
        return clickWildcardBuilder(nVContext).area(str);
    }

    public static Builder clickWildcardBuilder(View view, String str) {
        return clickWildcardBuilder(LogUtils.getPageContext(view)).area(str);
    }

    public static Builder clickBuilder(NVContext nVContext, ActSemantic actSemantic) {
        return clickBuilder(nVContext, null, actSemantic);
    }

    public static Builder clickBuilder(View view, ActSemantic actSemantic) {
        return clickBuilder(LogUtils.getPageContext(view), actSemantic);
    }

    public static Builder clickBuilder(NVContext nVContext, ObjectInfo objectInfo, ActSemantic actSemantic) {
        Builder builder = new Builder(nVContext);
        builder.actClick();
        builder.actSemantic(actSemantic);
        builder.objectInfo(objectInfo);
        return builder;
    }
}

package com.narvii.chat.template;

import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes2.dex */
public class MessageTemplateListResponse extends ListResponse<MessageTemplate> {
    public List<MessageTemplate> messageTemplateList;

    @Override // com.narvii.model.api.ListResponse
    public List<MessageTemplate> list() {
        return this.messageTemplateList;
    }
}

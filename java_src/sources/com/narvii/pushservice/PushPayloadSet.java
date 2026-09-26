package com.narvii.pushservice;

import androidx.core.app.NotificationCompat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes8.dex */
public class PushPayloadSet {

    @JsonDeserialize(contentAs = PushPayload.class)
    public List<PushPayload> list;

    public void append(PushPayload pushPayload) {
        if (this.list == null) {
            this.list = new ArrayList();
        }
        if (pushPayload.threadId != null) {
            Iterator<PushPayload> it = this.list.iterator();
            while (it.hasNext()) {
                if (Utils.isEquals(it.next().threadId, pushPayload.threadId)) {
                    it.remove();
                }
            }
        }
        this.list.add(pushPayload);
    }

    public int removeThread(String str) {
        List<PushPayload> list = this.list;
        int i10 = 0;
        if (list == null) {
            return 0;
        }
        Iterator<PushPayload> it = list.iterator();
        while (it.hasNext()) {
            if (Utils.isEquals(it.next().threadId, str)) {
                it.remove();
                i10++;
            }
        }
        return i10;
    }

    public void setNotificationContent(NVContext nVContext, NotificationCompat.Builder builder) {
        List<PushPayload> list = this.list;
        if (list == null || list.size() == 0) {
            return;
        }
        int i10 = 0;
        if (this.list.size() <= 1) {
            if (this.list.size() == 1) {
                NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
                String strMessage = this.list.get(0).message(nVContext);
                if (strMessage != null) {
                    bigTextStyle.x(strMessage);
                }
                builder.f0(bigTextStyle);
                return;
            }
            return;
        }
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        List<PushPayload> list2 = this.list;
        ListIterator<PushPayload> listIterator = list2.listIterator(list2.size());
        while (listIterator.hasPrevious()) {
            int i11 = i10 + 1;
            if (i10 >= 5) {
                break;
            }
            String strMessage2 = listIterator.previous().message(nVContext);
            if (strMessage2 != null) {
                inboxStyle.x(strMessage2);
            }
            i10 = i11;
        }
        builder.f0(inboxStyle);
    }

    public int size() {
        List<PushPayload> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}

package com.narvii.pushservice;

import android.os.Build;
import android.support.v4.app.NotificationCompat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public class PushPayloadSet {

    @JsonDeserialize(contentAs = PushPayload.class)
    public List<PushPayload> list;

    public int size() {
        List<PushPayload> list = this.list;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

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
        int i = 0;
        if (list == null) {
            return 0;
        }
        Iterator<PushPayload> it = list.iterator();
        while (it.hasNext()) {
            if (Utils.isEquals(it.next().threadId, str)) {
                it.remove();
                i++;
            }
        }
        return i;
    }

    public void setNotificationContent(NVContext nVContext, NotificationCompat.Builder builder) {
        List<PushPayload> list = this.list;
        if (list == null || list.size() == 0) {
            return;
        }
        if (Build.VERSION.SDK_INT < 16) {
            List<PushPayload> list2 = this.list;
            CharSequence charSequenceMessage = list2.get(list2.size() - 1).message(nVContext);
            if (charSequenceMessage != null) {
                builder.setContentText(charSequenceMessage);
                return;
            }
            return;
        }
        int i = 0;
        if (this.list.size() > 1) {
            NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
            List<PushPayload> list3 = this.list;
            ListIterator<PushPayload> listIterator = list3.listIterator(list3.size());
            while (listIterator.hasPrevious()) {
                int i2 = i + 1;
                if (i >= 5) {
                    break;
                }
                String strMessage = listIterator.previous().message(nVContext);
                if (strMessage != null) {
                    inboxStyle.addLine(strMessage);
                }
                i = i2;
            }
            builder.setStyle(inboxStyle);
            return;
        }
        if (this.list.size() == 1) {
            NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
            String strMessage2 = this.list.get(0).message(nVContext);
            if (strMessage2 != null) {
                bigTextStyle.bigText(strMessage2);
            }
            builder.setStyle(bigTextStyle);
        }
    }
}

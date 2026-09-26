package androidx.core.app;

import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class NotificationChannelGroupCompat {
    private boolean mBlocked;
    private List<NotificationChannelCompat> mChannels = Collections.emptyList();
    String mDescription;
    final String mId;
    CharSequence mName;

    public static class Builder {
        final NotificationChannelGroupCompat mGroup;

        public Builder(@NonNull String str) {
            this.mGroup = new NotificationChannelGroupCompat(str);
        }
    }

    NotificationChannelGroupCompat(@NonNull String str) {
        this.mId = (String) Preconditions.i(str);
    }
}

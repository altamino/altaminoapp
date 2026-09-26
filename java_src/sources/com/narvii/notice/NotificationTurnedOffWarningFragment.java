package com.narvii.notice;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.logging.LogEvent;
import com.narvii.util.NotificationManagerHelper;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class NotificationTurnedOffWarningFragment extends NVFragment {
    View cell;
    NotificationManagerHelper notificationManagerHelper;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.notificationManagerHelper = new NotificationManagerHelper(getContext());
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_turned_off_warning_cell, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        boolean z6;
        super.onResume();
        int i10 = 0;
        if (!this.notificationManagerHelper.areNotificationsEnabled() && this.notificationManagerHelper.isNotificationSettingAvailable()) {
            z6 = true;
        } else {
            z6 = false;
        }
        View view = this.cell;
        if (!z6) {
            i10 = 8;
        }
        view.setVisibility(i10);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.cell = view;
        view.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NotificationTurnedOffWarningFragment.1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(NotificationTurnedOffWarningFragment.this, "NotificationsOffPrompt").send();
                NotificationTurnedOffWarningFragment notificationTurnedOffWarningFragment = NotificationTurnedOffWarningFragment.this;
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(notificationTurnedOffWarningFragment, notificationTurnedOffWarningFragment.notificationManagerHelper.getNotificationSettingIntent());
            }
        });
    }
}

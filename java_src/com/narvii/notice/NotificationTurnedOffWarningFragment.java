package com.narvii.notice;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.logging.LogEvent;
import com.narvii.util.NotificationManagerHelper;

/* loaded from: classes3.dex */
public class NotificationTurnedOffWarningFragment extends NVFragment {
    View cell;
    NotificationManagerHelper notificationManagerHelper;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.notificationManagerHelper = new NotificationManagerHelper(getContext());
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_turned_off_warning_cell, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.cell = view;
        this.cell.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.notice.NotificationTurnedOffWarningFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                LogEvent.clickWildcardBuilder(NotificationTurnedOffWarningFragment.this, "NotificationsOffPrompt").send();
                NotificationTurnedOffWarningFragment notificationTurnedOffWarningFragment = NotificationTurnedOffWarningFragment.this;
                notificationTurnedOffWarningFragment.startActivity(notificationTurnedOffWarningFragment.notificationManagerHelper.getNotificationSettingIntent());
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.cell.setVisibility(!this.notificationManagerHelper.areNotificationsEnabled() && this.notificationManagerHelper.isNotificationSettingAvailable() ? 0 : 8);
    }
}

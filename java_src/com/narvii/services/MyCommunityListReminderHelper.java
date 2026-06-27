package com.narvii.services;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.community.MyCommunityListService;
import com.narvii.community.ReminderCheck;
import com.narvii.config.ConfigService;
import com.narvii.model.CheckInHistory;
import com.narvii.model.User;
import com.narvii.util.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MyCommunityListReminderHelper implements AutostartServiceProvider<Object> {
    private HashMap<Integer, Listener> observers = new HashMap<>();

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        int communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
        if (communityId == 0) {
            return null;
        }
        Listener listener = this.observers.get(Integer.valueOf(communityId));
        if (listener != null) {
            return listener;
        }
        Listener listener2 = new Listener(nVContext);
        this.observers.put(Integer.valueOf(communityId), listener2);
        return listener2;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
        if (obj instanceof Listener) {
            ((Listener) obj).start();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
        if (obj instanceof Listener) {
            ((Listener) obj).stop();
        }
    }

    static class Listener extends AccountService.ProfileListener {
        AccountService account;
        int communityId;
        MyCommunityListService myCommunityList;

        Listener(NVContext nVContext) {
            this.communityId = ((ConfigService) nVContext.getService("config")).getCommunityId();
            this.account = (AccountService) nVContext.getService("account");
            this.myCommunityList = (MyCommunityListService) nVContext.getService("myCommunityList");
        }

        void start() {
            ReminderCheck reminder = this.myCommunityList.getReminder(this.communityId);
            String reminderTimestamp = this.myCommunityList.getReminderTimestamp(this.communityId);
            if (reminder != null) {
                this.account.updateNotificationCount(reminder.notificationsCount, reminderTimestamp, false);
                this.account.updateNoticeCount(reminder.noticesCount, reminderTimestamp, false);
                Boolean bool = reminder.hasCheckInToday;
                if (bool != null && reminder.consecutiveCheckInDays != null) {
                    this.account.updateCheckInInfo(bool.booleanValue(), reminder.consecutiveCheckInDays.intValue(), reminderTimestamp, false);
                }
                CheckInHistory checkInHistory = reminder.checkInHistory;
                if (checkInHistory != null) {
                    this.account.updateCheckInHistoryInfo(checkInHistory, reminderTimestamp, false);
                }
            }
            this.account.addProfileListener(this);
        }

        void stop() {
            this.account.removeProfileListener(this);
            update();
            updateProfile();
        }

        void update() {
            if (this.account.hasAccount()) {
                ReminderCheck reminderCheck = new ReminderCheck();
                reminderCheck.notificationsCount = this.account.getNotificationCount();
                reminderCheck.noticesCount = this.account.getNoticeCount();
                reminderCheck.hasCheckInToday = Boolean.valueOf(this.account.hasCheckInToday());
                reminderCheck.consecutiveCheckInDays = Integer.valueOf(this.account.getConsecutiveCheckInDays());
                reminderCheck.checkInHistory = this.account.getCheckInHistory();
                this.myCommunityList.setReminder(this.communityId, reminderCheck, false);
            }
        }

        void updateProfile() {
            User userProfile = this.account.getUserProfile();
            if (userProfile != null) {
                long userProfileTimestamp = this.account.getUserProfileTimestamp();
                this.myCommunityList.updateUserProfile(this.communityId, userProfile, userProfileTimestamp == 0 ? null : DateTimeFormatter.formatISO8601(new Date(userProfileTimestamp)), true);
            }
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onProfileChanged(int i, User user) {
            updateProfile();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNotificationCountChanged(int i) {
            update();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onCheckInChanged(boolean z, int i) {
            update();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
            update();
        }

        @Override // com.narvii.account.AccountService.ProfileListener
        public void onNoticeCountChanged(int i) {
            update();
        }
    }
}

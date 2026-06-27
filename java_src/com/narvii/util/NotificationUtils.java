package com.narvii.util;

import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* loaded from: classes3.dex */
public class NotificationUtils {
    public static void sendNotificationIncludeGlobal(NotificationCenter notificationCenter, Notification notification) {
        if (notification == null) {
            return;
        }
        notificationCenter.sendNotification(notification);
        NotificationCenter notificationCenter2 = (NotificationCenter) NVApplication.instance().getService("notification");
        if (notificationCenter2 != notificationCenter) {
            notificationCenter2.sendNotification(notification.m51clone());
        }
    }

    public static void sendNotificationIncludeGlobal(NVContext nVContext, Notification notification) {
        sendNotificationIncludeGlobal((NotificationCenter) nVContext.getService("notification"), notification);
    }

    public static void sendNotification(NVContext nVContext, Notification notification, boolean z) {
        if (z) {
            sendNotificationIncludeGlobal(nVContext, notification);
        } else {
            ((NotificationCenter) nVContext.getService("notification")).sendNotification(notification);
        }
    }

    public static void sendUserNotification(final NVContext nVContext, Notification notification, final boolean z, boolean z2) {
        if (nVContext == null || notification == null) {
            return;
        }
        if (!z2 || !(notification.obj instanceof User)) {
            sendNotification(nVContext, notification, z);
            return;
        }
        final Notification notificationM51clone = notification.m51clone();
        User user = (User) notificationM51clone.obj;
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().path("/user-profile/" + user.id()).communityId(user.ndcId).build(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.util.NotificationUtils.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) throws Exception {
                User user2;
                if (userResponse != null && (user2 = userResponse.user) != null) {
                    notificationM51clone.obj = user2;
                }
                NotificationUtils.sendNotification(nVContext, notificationM51clone, z);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                NotificationUtils.sendNotification(nVContext, notificationM51clone, z);
            }
        });
    }
}

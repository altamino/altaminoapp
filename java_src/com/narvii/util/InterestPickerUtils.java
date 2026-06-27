package com.narvii.util;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.suggest.interest.InterestPickerWelcomeFragment;

/* loaded from: classes3.dex */
public class InterestPickerUtils {
    public static final String FINISH_EXISTING_INTEREST_PICKER = "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER";
    private static final long SHOW_INTERVAL;

    static {
        SHOW_INTERVAL = NVApplication.DEBUG ? 300000L : DateUtils.ONE_DAY;
    }

    public static void openInterestPicker(Context context, EventLogProfileResponse eventLogProfileResponse) {
        openInterestPicker(context, eventLogProfileResponse, true, false);
    }

    public static void openInterestPicker(Context context, EventLogProfileResponse eventLogProfileResponse, boolean z, boolean z2) {
        if (eventLogProfileResponse == null || context == null) {
            return;
        }
        LocalBroadcastManager.getInstance(context).sendBroadcastSync(new Intent(FINISH_EXISTING_INTEREST_PICKER));
        if (NVApplication.CLIENT_TYPE == 100 && eventLogProfileResponse.needTriggerInterestPicker) {
            if (z2) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("interestPicker", 0);
                long j = sharedPreferences.getLong("last_auto_pop_up_time", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                sharedPreferences.edit().putLong("last_auto_pop_up_time", jCurrentTimeMillis).apply();
                if (jCurrentTimeMillis - j < SHOW_INTERVAL) {
                    return;
                }
            }
            eventLogProfileResponse.needTriggerInterestPicker = false;
            if (z && eventLogProfileResponse.interestPickerStyle == 3) {
                Intent intent = FragmentWrapperActivity.intent(InterestPickerWelcomeFragment.class);
                intent.putExtra("interestPickerStyle", eventLogProfileResponse.interestPickerStyle);
                intent.putExtra("contentLanguage", eventLogProfileResponse.contentLanguage);
                context.startActivity(intent);
                return;
            }
            Intent intent2 = FragmentWrapperActivity.intent(InterestPickerFragment.class);
            intent2.putExtra("interestPickerStyle", eventLogProfileResponse.interestPickerStyle);
            intent2.putExtra("contentLanguage", eventLogProfileResponse.contentLanguage);
            context.startActivity(intent2);
        }
    }

    public static boolean isEnglishUser(Context context, EventLogProfileResponse eventLogProfileResponse) {
        NVContext nVContext;
        if (eventLogProfileResponse == null) {
            return false;
        }
        String requestPrefLanguageWithLocalAsDefault = eventLogProfileResponse.contentLanguage;
        if (requestPrefLanguageWithLocalAsDefault == null && (nVContext = Utils.getNVContext(context)) != null) {
            requestPrefLanguageWithLocalAsDefault = ((ContentLanguageService) nVContext.getService("content_language")).getRequestPrefLanguageWithLocalAsDefault();
        }
        return "en".equalsIgnoreCase(requestPrefLanguageWithLocalAsDefault);
    }
}

package com.narvii.util;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.EventLogProfileResponse;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.suggest.interest.InterestPickerWelcomeFragment;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes8.dex */
public class InterestPickerUtils {
    public static final String FINISH_EXISTING_INTEREST_PICKER = "com.narvii.action.FINISH_EXISTING_INTEREST_PICKER";
    private static final long SHOW_INTERVAL;

    public static void openInterestPicker(Context context, EventLogProfileResponse eventLogProfileResponse) {
        openInterestPicker(context, eventLogProfileResponse, true, false);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    static {
        SHOW_INTERVAL = NVApplication.DEBUG ? 300000L : DateUtils.ONE_DAY;
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

    public static void openInterestPicker(Context context, EventLogProfileResponse eventLogProfileResponse, boolean z6, boolean z10) {
        if (eventLogProfileResponse == null || context == null) {
            return;
        }
        LocalBroadcastManager.b(context).e(new Intent(FINISH_EXISTING_INTEREST_PICKER));
        if (NVApplication.CLIENT_TYPE == 100 && eventLogProfileResponse.needTriggerInterestPicker) {
            if (z10) {
                SharedPreferences sharedPreferences = context.getSharedPreferences("interestPicker", 0);
                long j6 = sharedPreferences.getLong("last_auto_pop_up_time", 0L);
                long jCurrentTimeMillis = System.currentTimeMillis();
                sharedPreferences.edit().putLong("last_auto_pop_up_time", jCurrentTimeMillis).apply();
                if (jCurrentTimeMillis - j6 < SHOW_INTERVAL) {
                    return;
                }
            }
            eventLogProfileResponse.needTriggerInterestPicker = false;
            if (z6 && eventLogProfileResponse.interestPickerStyle == 3) {
                Intent intent = FragmentWrapperActivity.intent(InterestPickerWelcomeFragment.class);
                intent.putExtra("interestPickerStyle", eventLogProfileResponse.interestPickerStyle);
                intent.putExtra("contentLanguage", eventLogProfileResponse.contentLanguage);
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
                return;
            }
            Intent intent2 = FragmentWrapperActivity.intent(InterestPickerFragment.class);
            intent2.putExtra("interestPickerStyle", eventLogProfileResponse.interestPickerStyle);
            intent2.putExtra("contentLanguage", eventLogProfileResponse.contentLanguage);
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent2);
        }
    }
}

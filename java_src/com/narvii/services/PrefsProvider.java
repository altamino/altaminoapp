package com.narvii.services;

import android.content.SharedPreferences;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatPreferenceHelper;

/* loaded from: classes.dex */
public class PrefsProvider implements ServiceProvider<SharedPreferences> {
    ChatPreferenceHelper chatPreferenceHelper;
    private String name;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, SharedPreferences sharedPreferences) {
    }

    public PrefsProvider(String str) {
        this.name = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public SharedPreferences create(NVContext nVContext) {
        this.chatPreferenceHelper = new ChatPreferenceHelper(nVContext);
        return nVContext.getContext().getSharedPreferences(this.name, 0);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, SharedPreferences sharedPreferences) {
        ChatPreferenceHelper chatPreferenceHelper = this.chatPreferenceHelper;
        if (chatPreferenceHelper != null) {
            chatPreferenceHelper.removeOverdueItems();
        }
    }
}

package com.narvii.master.theme;

import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.master.MasterAppearance;
import com.narvii.master.MasterAppearanceResponse;
import com.narvii.model.Media;
import com.narvii.util.Callback;
import com.narvii.util.EventDispatcher;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: MasterThemeService.kt */
/* loaded from: classes3.dex */
public final class MasterThemeService {
    private final ApiService apiService;
    private List<? extends Media> backgroundMediaList;
    private final EventDispatcher<MasterThemeListener> eventDispatcher;
    private boolean isRequesting;
    private LanguageChangeListener languageChangeListener;
    private final ContentLanguageService languageService;
    private Integer primaryColor;

    public MasterThemeService(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.languageService = (ContentLanguageService) ctx.getService("content_language");
        this.apiService = (ApiService) ctx.getService("api");
        this.eventDispatcher = new EventDispatcher<>();
        this.languageChangeListener = new LanguageChangeListener() { // from class: com.narvii.master.theme.MasterThemeService$languageChangeListener$1
            @Override // com.narvii.language.LanguageChangeListener
            public final void onLanguageChanged(String str) {
                this.this$0.sendMasterThemeRequest(str);
            }
        };
        this.languageService.registerLanguageChangeListener(this.languageChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendMasterThemeRequest(String str) {
        this.isRequesting = true;
        this.backgroundMediaList = null;
        ApiRequest.Builder builderPath = new ApiRequest.Builder().global().path("/client-config/appearance-settings");
        if (str == null) {
            ContentLanguageService languageService = this.languageService;
            Intrinsics.checkExpressionValueIsNotNull(languageService, "languageService");
            str = languageService.getRequestPrefLanguageWithLocalAsDefault();
        }
        this.apiService.exec(builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, str).build(), new ApiResponseListener<MasterAppearanceResponse>(MasterAppearanceResponse.class) { // from class: com.narvii.master.theme.MasterThemeService.sendMasterThemeRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest req, MasterAppearanceResponse masterAppearanceResponse) throws Exception {
                final MasterAppearance masterAppearance;
                Intrinsics.checkParameterIsNotNull(req, "req");
                super.onFinish(req, (ApiRequest) masterAppearanceResponse);
                MasterThemeService.this.isRequesting = false;
                if (masterAppearanceResponse == null || (masterAppearance = masterAppearanceResponse.appearanceSettings) == null) {
                    return;
                }
                MasterThemeService.this.backgroundMediaList = masterAppearance.backgroundMediaList;
                MasterThemeService.this.primaryColor = Integer.valueOf(masterAppearance.primaryColor);
                MasterThemeService.this.eventDispatcher.dispatch(new Callback<MasterThemeListener>() { // from class: com.narvii.master.theme.MasterThemeService$sendMasterThemeRequest$1$onFinish$1$1
                    @Override // com.narvii.util.Callback
                    public final void call(MasterThemeListener masterThemeListener) {
                        MasterAppearance masterAppearance2 = masterAppearance;
                        masterThemeListener.onMasterThemeChanged(masterAppearance2.backgroundMediaList, Integer.valueOf(masterAppearance2.primaryColor));
                    }
                });
            }
        });
    }

    public final void registerListener(MasterThemeListener l) {
        Intrinsics.checkParameterIsNotNull(l, "l");
        this.eventDispatcher.addListener(l);
        if (this.isRequesting) {
            return;
        }
        List<? extends Media> list = this.backgroundMediaList;
        if (list != null) {
            l.onMasterThemeChanged(list, this.primaryColor);
        } else {
            sendMasterThemeRequest(null);
        }
    }

    public final void unregisterListener(MasterThemeListener l) {
        Intrinsics.checkParameterIsNotNull(l, "l");
        this.eventDispatcher.removeListener(l);
    }
}

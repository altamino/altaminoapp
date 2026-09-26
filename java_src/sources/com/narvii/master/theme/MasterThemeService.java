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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class MasterThemeService {
    private final ApiService apiService;

    @Nullable
    private List<? extends Media> backgroundMediaList;

    @NotNull
    private final EventDispatcher<MasterThemeListener> eventDispatcher;
    private boolean isRequesting;

    @NotNull
    private LanguageChangeListener languageChangeListener;
    private final ContentLanguageService languageService;

    @Nullable
    private Integer primaryColor;

    /* JADX INFO: renamed from: com.narvii.master.theme.MasterThemeService$sendMasterThemeRequest$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<MasterAppearanceResponse> {
        AnonymousClass1(Class<MasterAppearanceResponse> cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$1$lambda$0(MasterAppearance it, MasterThemeListener masterThemeListener) {
            t.j(it, "$it");
            masterThemeListener.onMasterThemeChanged(it.backgroundMediaList, Integer.valueOf(it.primaryColor));
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@NotNull ApiRequest req, @Nullable MasterAppearanceResponse masterAppearanceResponse) throws Exception {
            final MasterAppearance masterAppearance;
            t.j(req, "req");
            super.onFinish(req, masterAppearanceResponse);
            MasterThemeService.this.isRequesting = false;
            if (masterAppearanceResponse == null || (masterAppearance = masterAppearanceResponse.appearanceSettings) == null) {
                return;
            }
            MasterThemeService masterThemeService = MasterThemeService.this;
            masterThemeService.backgroundMediaList = masterAppearance.backgroundMediaList;
            masterThemeService.primaryColor = Integer.valueOf(masterAppearance.primaryColor);
            masterThemeService.eventDispatcher.dispatch(new Callback() { // from class: com.narvii.master.theme.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    MasterThemeService.AnonymousClass1.onFinish$lambda$1$lambda$0(masterAppearance, (MasterThemeListener) obj);
                }
            });
        }
    }

    private final void sendMasterThemeRequest(String str) {
        this.isRequesting = true;
        this.backgroundMediaList = null;
        ApiRequest.Builder builderPath = new ApiRequest.Builder().global().path("/client-config/appearance-settings");
        if (str == null) {
            str = this.languageService.getRequestPrefLanguageWithLocalAsDefault();
            t.i(str, "getRequestPrefLanguageWithLocalAsDefault(...)");
        }
        this.apiService.exec(builderPath.param("language", str).build(), new AnonymousClass1(MasterAppearanceResponse.class));
    }

    public MasterThemeService(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        ContentLanguageService contentLanguageService = (ContentLanguageService) ctx.getService("content_language");
        this.languageService = contentLanguageService;
        this.apiService = (ApiService) ctx.getService("api");
        this.eventDispatcher = new EventDispatcher<>();
        LanguageChangeListener languageChangeListener = new LanguageChangeListener() { // from class: com.narvii.master.theme.b
            @Override // com.narvii.language.LanguageChangeListener
            public final void onLanguageChanged(String str) {
                MasterThemeService.languageChangeListener$lambda$0(this.f2429a, str);
            }
        };
        this.languageChangeListener = languageChangeListener;
        contentLanguageService.registerLanguageChangeListener(languageChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void languageChangeListener$lambda$0(MasterThemeService this$0, String str) {
        t.j(this$0, "this$0");
        this$0.sendMasterThemeRequest(str);
    }

    public final void registerListener(@NotNull MasterThemeListener l) {
        t.j(l, "l");
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

    public final void unregisterListener(@NotNull MasterThemeListener l) {
        t.j(l, "l");
        this.eventDispatcher.removeListener(l);
    }
}

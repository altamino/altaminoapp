package com.narvii.incubator;

import com.narvii.app.NVActivity;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageSpec;
import com.narvii.master.explorer.SupportLanguageResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ContentLanguagePickHelper {

    /* JADX INFO: renamed from: com.narvii.incubator.ContentLanguagePickHelper$showLanguagePickerDialog$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<SupportLanguageResponse> {
        final /* synthetic */ NVActivity $activity;
        final /* synthetic */ String $contentLanguage;
        final /* synthetic */ ContentLanguageService $languageService;
        final /* synthetic */ ProgressDialog $progressDialog;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ProgressDialog progressDialog, NVActivity nVActivity, String str, ContentLanguageService contentLanguageService, Class<SupportLanguageResponse> cls) {
            super(cls);
            this.$progressDialog = progressDialog;
            this.$activity = nVActivity;
            this.$contentLanguage = str;
            this.$languageService = contentLanguageService;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFinish$lambda$0(LanguageChooseDialog dlg, ContentLanguageService contentLanguageService, LanguageSpec languageSpec) {
            t.j(dlg, "$dlg");
            if (dlg.isShowing()) {
                dlg.dismiss();
            }
            if (Utils.isEqualsNotNull(contentLanguageService.languageUserSelected(), languageSpec.code)) {
                return;
            }
            contentLanguageService.saveLanguageCode(languageSpec.code);
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@NotNull ApiRequest req, @NotNull SupportLanguageResponse resp) throws Exception {
            t.j(req, "req");
            t.j(resp, "resp");
            super.onFinish(req, resp);
            if (this.$progressDialog.isShowing()) {
                this.$progressDialog.dismiss();
            }
            final LanguageChooseDialog languageChooseDialog = new LanguageChooseDialog(this.$activity, resp.supportedLanguages, this.$contentLanguage);
            final ContentLanguageService contentLanguageService = this.$languageService;
            languageChooseDialog.setOnItemClickListener(new LanguageChooseDialog.ItemClickListener() { // from class: com.narvii.incubator.a
                @Override // com.narvii.incubator.LanguageChooseDialog.ItemClickListener
                public final void onItemClick(LanguageSpec languageSpec) {
                    ContentLanguagePickHelper.AnonymousClass1.onFinish$lambda$0(languageChooseDialog, contentLanguageService, languageSpec);
                }
            });
            languageChooseDialog.show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            NVToast.makeText(this.$activity.getContext(), str, 1).show();
            if (this.$progressDialog.isShowing()) {
                this.$progressDialog.dismiss();
            }
        }
    }

    public final void showLanguagePickerDialog(@NotNull NVActivity activity) {
        t.j(activity, "activity");
        ProgressDialog progressDialog = new ProgressDialog(activity.getContext());
        progressDialog.show();
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path("community-collection/supported-languages").global().param("start", 0).param("size", 100).build();
        ContentLanguageService contentLanguageService = (ContentLanguageService) activity.getService("content_language");
        String requestPrefLanguageWithEnAsDefault = contentLanguageService.getRequestPrefLanguageWithEnAsDefault();
        t.i(requestPrefLanguageWithEnAsDefault, "getRequestPrefLanguageWithEnAsDefault(...)");
        ApiService apiService = (ApiService) activity.getService("api");
        t.g(apiService);
        apiService.exec(apiRequestBuild, new AnonymousClass1(progressDialog, activity, requestPrefLanguageWithEnAsDefault, contentLanguageService, SupportLanguageResponse.class));
    }
}

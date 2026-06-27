package com.narvii.incubator;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.app.NVActivity;
import com.narvii.incubator.LanguageChooseDialog;
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
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ContentLanguagePickHelper.kt */
/* loaded from: classes2.dex */
public final class ContentLanguagePickHelper {
    public final void showLanguagePickerDialog(NVActivity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        ProgressDialog progressDialog = new ProgressDialog(activity.getContext());
        progressDialog.show();
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path("community-collection/supported-languages").global().param(TtmlNode.START, 0).param("size", 100).build();
        ContentLanguageService languageService = (ContentLanguageService) activity.getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(languageService, "languageService");
        String requestPrefLanguageWithEnAsDefault = languageService.getRequestPrefLanguageWithEnAsDefault();
        Intrinsics.checkExpressionValueIsNotNull(requestPrefLanguageWithEnAsDefault, "languageService.requestPrefLanguageWithEnAsDefault");
        ApiService apiService = (ApiService) activity.getService("api");
        if (apiService != null) {
            apiService.exec(apiRequestBuild, new AnonymousClass1(progressDialog, activity, requestPrefLanguageWithEnAsDefault, languageService, SupportLanguageResponse.class));
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
    }

    /* compiled from: ContentLanguagePickHelper.kt */
    /* renamed from: com.narvii.incubator.ContentLanguagePickHelper$showLanguagePickerDialog$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<SupportLanguageResponse> {
        final /* synthetic */ NVActivity $activity;
        final /* synthetic */ String $contentLanguage;
        final /* synthetic */ ContentLanguageService $languageService;
        final /* synthetic */ ProgressDialog $progressDialog;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ProgressDialog progressDialog, NVActivity nVActivity, String str, ContentLanguageService contentLanguageService, Class cls) {
            super(cls);
            this.$progressDialog = progressDialog;
            this.$activity = nVActivity;
            this.$contentLanguage = str;
            this.$languageService = contentLanguageService;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest req, SupportLanguageResponse resp) throws Exception {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onFinish(req, (ApiRequest) resp);
            if (this.$progressDialog.isShowing()) {
                this.$progressDialog.dismiss();
            }
            final LanguageChooseDialog languageChooseDialog = new LanguageChooseDialog(this.$activity, resp.supportedLanguages, this.$contentLanguage);
            languageChooseDialog.setOnItemClickListener(new LanguageChooseDialog.ItemClickListener() { // from class: com.narvii.incubator.ContentLanguagePickHelper$showLanguagePickerDialog$1$onFinish$1
                @Override // com.narvii.incubator.LanguageChooseDialog.ItemClickListener
                public final void onItemClick(LanguageSpec languageSpec) {
                    if (languageChooseDialog.isShowing()) {
                        languageChooseDialog.dismiss();
                    }
                    if (Utils.isEqualsNotNull(this.this$0.$languageService.languageUserSelected(), languageSpec.code)) {
                        return;
                    }
                    this.this$0.$languageService.saveLanguageCode(languageSpec.code);
                }
            });
            languageChooseDialog.show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
            NVToast.makeText(this.$activity.getContext(), str, 1).show();
            if (this.$progressDialog.isShowing()) {
                this.$progressDialog.dismiss();
            }
        }
    }
}

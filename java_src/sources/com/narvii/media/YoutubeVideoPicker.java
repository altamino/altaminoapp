package com.narvii.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import com.fasterxml.jackson.databind.JsonNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.webview.WebViewFragment;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: classes8.dex */
public class YoutubeVideoPicker extends WebViewFragment {
    private final Runnable checkUrl = new Runnable() { // from class: com.narvii.media.YoutubeVideoPicker.1
        String prev;

        @Override // java.lang.Runnable
        public void run() {
            if (((WebViewFragment) YoutubeVideoPicker.this).webview == null) {
                return;
            }
            String url = ((WebViewFragment) YoutubeVideoPicker.this).webview.getUrl();
            if (!Utils.isEquals(this.prev, url)) {
                String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(url);
                YoutubeVideoPicker.this.setVideoId(youtubeVideoIdFromUrl);
                YoutubeVideoPicker youtubeVideoPicker = YoutubeVideoPicker.this;
                boolean zContains = true;
                if (youtubeVideoPicker.googleVideoSearch) {
                    try {
                        zContains = true ^ ("." + Uri.parse(url).getHost()).contains(".google.");
                    } catch (Exception unused) {
                    }
                    YoutubeVideoPicker.this.setShowCheckButton(zContains);
                } else {
                    youtubeVideoPicker.setShowCheckButton(!TextUtils.isEmpty(youtubeVideoIdFromUrl));
                }
                this.prev = url;
            }
            Utils.postDelayed(this, 200L);
        }
    };
    boolean googleVideoSearch;
    boolean showCheckButton;
    String videoId;
    YoutubeService youtubeService;

    /* JADX INFO: renamed from: com.narvii.media.YoutubeVideoPicker$3, reason: invalid class name */
    class AnonymousClass3 extends Thread {
        int errorCode = 0;
        String errorMsg = null;
        final /* synthetic */ Media val$media;

        AnonymousClass3(Media media) {
            this.val$media = media;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Media media) {
            YoutubeVideoPicker.this.callbackPickResult(media);
            if (this.errorCode > 0) {
                ((StatisticsService) YoutubeVideoPicker.this.getService("statistics")).event("youtubeApiError").param("code", this.errorCode).param(AccountNotice.LEVEL_MESSAGE, this.errorMsg);
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Runnable runnable;
            try {
                try {
                    try {
                        this.val$media.duration = YoutubeUtils.getYoutubeVideoLength(YoutubeVideoPicker.this.videoId);
                        final Media media = this.val$media;
                        runnable = new Runnable() { // from class: com.narvii.media.m
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f2464a.lambda$run$0(media);
                            }
                        };
                    } catch (IOException e) {
                        this.errorCode = 2;
                        this.errorMsg = e.getMessage();
                        final Media media2 = this.val$media;
                        runnable = new Runnable() { // from class: com.narvii.media.m
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f2464a.lambda$run$0(media2);
                            }
                        };
                    }
                } catch (JSONException e2) {
                    this.errorCode = 3;
                    this.errorMsg = e2.getMessage();
                    final Media media3 = this.val$media;
                    runnable = new Runnable() { // from class: com.narvii.media.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f2464a.lambda$run$0(media3);
                        }
                    };
                } catch (Exception e6) {
                    this.errorCode = 1;
                    this.errorMsg = e6.getMessage();
                    final Media media4 = this.val$media;
                    runnable = new Runnable() { // from class: com.narvii.media.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f2464a.lambda$run$0(media4);
                        }
                    };
                }
                Utils.post(runnable);
            } catch (Throwable th) {
                final Media media5 = this.val$media;
                Utils.post(new Runnable() { // from class: com.narvii.media.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f2464a.lambda$run$0(media5);
                    }
                });
                throw th;
            }
        }
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public void setVideoId(String str) {
        this.videoId = str;
    }

    public String videoId() {
        return this.videoId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callbackPickResult(Media media) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(media);
        String stringParam = getStringParam("pickCallback");
        if (stringParam == null) {
            Intent intent = new Intent();
            intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
            setResult(-1, intent);
            finish();
            return;
        }
        MediaPickCallbackManager mediaPickCallbackManager = (MediaPickCallbackManager) getService("mediaPickCallback");
        MediaPickCallback callback = mediaPickCallbackManager == null ? null : mediaPickCallbackManager.getCallback(stringParam);
        if (callback == null) {
            return;
        }
        HashMap<String, Object> map = (HashMap) getActivity().getIntent().getExtras().getSerializable("pickCallbackParams");
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("mediaList", JacksonUtils.writeAsString(arrayList));
        map.put(MediaPickerFragment.PICK_SOURCE, "Camera");
        callback.onPick(map, (NVActivity) getActivity(), true);
    }

    public void fillAdditionalMediaInfo(Media media) {
        new AnonymousClass3(media).start();
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        Utils.handler.removeCallbacks(this.checkUrl);
        super.onPause();
    }

    void setShowCheckButton(boolean z6) {
        if (this.showCheckButton != z6) {
            this.showCheckButton = z6;
            invalidateOptionsMenu();
        }
    }

    protected void verifyAndReturn() {
        if (this.videoId == null) {
            NVToast.makeText(getContext(), R.string.media_video_picker_unavailable, 0).show();
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        final ApiRequest apiRequestBuild = ApiRequest.builder()._url("https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=" + this.videoId + "&format=json").build();
        final ApiService apiService = (ApiService) getService("api");
        apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.media.YoutubeVideoPicker.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                if (ApiService.shouldShowErrMessage(YoutubeVideoPicker.this.getContext())) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(YoutubeVideoPicker.this.getContext());
                    builder.setTitle(R.string.media_youtube_verify_fail_title);
                    builder.setMessage(R.string.media_youtube_verify_fail_msg);
                    builder.setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    builder.show();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                JsonNode jsonNodeJson = json();
                String strTextValue = jsonNodeJson.get("title").textValue();
                strTextValue.charAt(0);
                String strTextValue2 = jsonNodeJson.get("author_name").textValue();
                strTextValue2.charAt(0);
                final Media media = new Media();
                media.type = 103;
                media.url = "ytv://" + YoutubeVideoPicker.this.videoId;
                media.caption = strTextValue;
                media.author = strTextValue2;
                media.fileName = strTextValue;
                YoutubeVideoPicker youtubeVideoPicker = YoutubeVideoPicker.this;
                youtubeVideoPicker.youtubeService.exec(youtubeVideoPicker.videoId, null, new YoutubeVideoCallback() { // from class: com.narvii.media.YoutubeVideoPicker.2.1
                    @Override // com.narvii.youtube.YoutubeVideoCallback
                    public void onFail(String str, int i10, String str2) {
                        progressDialog.dismiss();
                        AlertDialog.Builder builder = new AlertDialog.Builder(YoutubeVideoPicker.this.getContext());
                        builder.setTitle(R.string.media_youtube_verify_fail_title);
                        builder.setMessage(R.string.media_video_picker_unavailable);
                        builder.setNegativeButton(android.R.string.ok, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                        if (YoutubeVideoPicker.this.getActivity() == null || YoutubeVideoPicker.this.getActivity().isFinishing()) {
                            return;
                        }
                        try {
                            builder.show();
                        } catch (WindowManager.BadTokenException e) {
                            Log.e(e.getMessage());
                        }
                    }

                    @Override // com.narvii.youtube.YoutubeVideoCallback
                    public void onFinish(String str, YoutubeVideoList youtubeVideoList) {
                        if (YoutubeVideoPicker.this.getBooleanParam(MediaPickerFragment.PICK_YOUTUBE_NEED_DURATION)) {
                            YoutubeVideoPicker.this.fillAdditionalMediaInfo(media);
                        } else {
                            YoutubeVideoPicker.this.callbackPickResult(media);
                        }
                    }
                });
            }
        });
        progressDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.narvii.media.l
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                apiService.abort(apiRequestBuild);
            }
        });
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        return tryGoBack();
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.youtubeService = (YoutubeService) getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            verifyAndReturn();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        menu.findItem(android.R.string.ok).setVisible(this.showCheckButton);
        super.onPrepareOptionsMenu(menu);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Utils.handler.removeCallbacks(this.checkUrl);
        Utils.post(this.checkUrl);
    }

    @Override // com.narvii.webview.WebViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        String youtubeVideoIdFromUrl;
        super.onViewCreated(view, bundle);
        if (bundle == null) {
            String stringParam = getStringParam(ImagesContract.URL);
            this.googleVideoSearch = getBooleanParam("googleVideoSearch");
            if (stringParam == null) {
                if (this.googleVideoSearch) {
                    loadUrl("http://video.google.com/");
                    return;
                } else {
                    loadUrl("http://m.youtube.com/");
                    return;
                }
            }
            if (getBooleanParam("confirmUrl") && (youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(stringParam)) != null) {
                this.videoId = youtubeVideoIdFromUrl;
                verifyAndReturn();
            }
        }
    }
}

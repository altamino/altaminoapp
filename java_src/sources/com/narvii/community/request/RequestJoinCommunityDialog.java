package com.narvii.community.request;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.master.invitation.CommunityInviteResponse;
import com.narvii.master.invitation.CommunityMemRequestResponse;
import com.narvii.model.Community;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.CheckDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.dialog.RealtimeBlurDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RequestJoinCommunityDialog extends RealtimeBlurDialog implements View.OnClickListener {
    private static final int DEFAULT_MAX_COUNT = 500;
    private static final int REQUEST_TO_JOIN_STEP1 = 0;
    private static final int REQUEST_TO_JOIN_STEP2 = 1;
    Button btnInviteSubmit;
    Button btnLandingRequest;
    Button btnLandingSubmit;
    Button btnRequestSubmit;
    CallBack callBack;
    private Community community;
    private NVContext context;
    EditText edtInvite;
    EditText edtLanding;
    EditText edtRequest;
    View inviteClose;
    TextWatcher inviteEditWatcher;
    boolean isRequested;
    private int joinType;
    View landingClose;
    View landingContainer;
    TextWatcher landingEditWatcher;
    View requestContainer;
    TextWatcher requestMessageEditWatcher;
    private int requestToJoinStep;
    TextView tvLeftCount;

    public interface CallBack {
        void onComplete(boolean z6, String str, String str2);
    }

    @Override // com.narvii.app.NVDialog, com.narvii.logging.Page
    public String getPageName() {
        return "community_join_request";
    }

    private void gotoRequestToJoin() {
        if (this.isRequested) {
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setTitle(getContext().getString(R.string.community_send_request));
            alertDialog.setMessage(getContext().getString(R.string.community_requested_before));
            alertDialog.addButton("Ok", 4, (View.OnClickListener) null);
            alertDialog.show();
            return;
        }
        EditText editText = this.edtRequest;
        if (editText != null) {
            editText.requestFocus();
        }
        this.requestToJoinStep = 1;
        this.landingContainer.setVisibility(8);
        this.requestContainer.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCheckDialog(int i10) {
        CheckDialog checkDialog = new CheckDialog(getContext());
        ((TextView) checkDialog.findViewById(R.id.check_dialog_content)).setText(this.context.getContext().getString(i10));
        checkDialog.show();
    }

    private void submitRequest() {
        if (this.community == null) {
            return;
        }
        String string = this.joinType == 1 ? this.edtLanding.getText().toString() : this.edtInvite.getText().toString();
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ((ApiService) this.context.getService("api")).exec(new ApiRequest.Builder().global().path("/community/link-identify").param("q", string).build(), new ApiResponseListener<CommunityInviteResponse>(CommunityInviteResponse.class) { // from class: com.narvii.community.request.RequestJoinCommunityDialog.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityInviteResponse communityInviteResponse) throws Exception {
                super.onFinish(apiRequest, communityInviteResponse);
                progressDialog.dismiss();
                CallBack callBack = RequestJoinCommunityDialog.this.callBack;
                if (callBack != null) {
                    callBack.onComplete(false, communityInviteResponse.invitationId, null);
                }
                RequestJoinCommunityDialog.this.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                NVToast.makeText(RequestJoinCommunityDialog.this.getContext(), str, 1).show();
            }
        });
    }

    private void submitRequestToJoin() {
        if (this.community == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().communityId(this.community.id).post().path("/community/membership-request");
        builderPath.param(AccountNotice.LEVEL_MESSAGE, this.edtRequest.getText().toString());
        ((ApiService) this.context.getService("api")).exec(builderPath.build(), new ApiResponseListener<CommunityMemRequestResponse>(CommunityMemRequestResponse.class) { // from class: com.narvii.community.request.RequestJoinCommunityDialog.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommunityMemRequestResponse communityMemRequestResponse) throws Exception {
                super.onFinish(apiRequest, communityMemRequestResponse);
                int i10 = communityMemRequestResponse.communityMembershipRequest.status;
                if (i10 == 2) {
                    RequestJoinCommunityDialog.this.showCheckDialog(R.string.community_join_request_approve);
                } else if (i10 == 3) {
                    RequestJoinCommunityDialog.this.showCheckDialog(R.string.community_join_request_reject);
                } else {
                    RequestJoinCommunityDialog.this.showCheckDialog(R.string.community_join_request_sent);
                }
                progressDialog.dismiss();
                CallBack callBack = RequestJoinCommunityDialog.this.callBack;
                if (callBack != null) {
                    callBack.onComplete(true, null, null);
                }
                RequestJoinCommunityDialog.this.dismiss();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                progressDialog.dismiss();
                if (i10 == 2001) {
                    AlertDialog alertDialog = new AlertDialog(RequestJoinCommunityDialog.this.getContext());
                    alertDialog.setTitle(RequestJoinCommunityDialog.this.getContext().getString(R.string.community_send_request));
                    alertDialog.setMessage(RequestJoinCommunityDialog.this.getContext().getString(R.string.community_requested_before));
                    alertDialog.addButton("Ok", 4, (View.OnClickListener) null);
                    alertDialog.show();
                    return;
                }
                NVToast.makeText(RequestJoinCommunityDialog.this.getContext(), str, 1).show();
            }
        });
    }

    public RequestJoinCommunityDialog(NVContext nVContext, int i10, Community community, CallBack callBack, boolean z6) {
        int i11;
        super(nVContext.getContext());
        this.requestMessageEditWatcher = new TextWatcher() { // from class: com.narvii.community.request.RequestJoinCommunityDialog.4
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                boolean z10;
                int i12;
                if (500 - editable.length() < 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                TextView textView = RequestJoinCommunityDialog.this.tvLeftCount;
                if (textView != null) {
                    textView.setText(String.valueOf(500 - editable.length()));
                    TextView textView2 = RequestJoinCommunityDialog.this.tvLeftCount;
                    if (z10) {
                        i12 = SupportMenu.CATEGORY_MASK;
                    } else {
                        i12 = -3355444;
                    }
                    textView2.setTextColor(i12);
                }
                Button button = RequestJoinCommunityDialog.this.btnRequestSubmit;
                if (button != null) {
                    button.setEnabled(!z10);
                }
            }
        };
        this.landingEditWatcher = new TextWatcher() { // from class: com.narvii.community.request.RequestJoinCommunityDialog.5
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }
        };
        this.inviteEditWatcher = new TextWatcher() { // from class: com.narvii.community.request.RequestJoinCommunityDialog.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i12, int i13, int i14) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                Button button = RequestJoinCommunityDialog.this.btnInviteSubmit;
                if (button != null) {
                    button.setEnabled(!TextUtils.isEmpty(editable.toString()));
                }
            }
        };
        AndroidBug5497Workaround.assistActivity(this);
        this.community = community;
        this.joinType = i10;
        this.context = nVContext;
        this.callBack = callBack;
        this.isRequested = z6;
        getRealtimeBlurView().setOverlayColor(1711276032);
        getRealtimeBlurView().setBlurRadius(Utils.dpToPx(getContext(), 30.0f));
        if (i10 == 2) {
            i11 = R.layout.join_community_invite_layout;
        } else {
            i11 = R.layout.join_community_request_layout;
        }
        setContentView(i11);
        if (i10 == 1) {
            this.requestToJoinStep = 0;
        }
        if (i10 == 2) {
            EditText editText = (EditText) findViewById(R.id.invite_edit);
            this.edtInvite = editText;
            editText.addTextChangedListener(this.inviteEditWatcher);
            Button button = (Button) findViewById(R.id.invite_submit);
            this.btnInviteSubmit = button;
            button.setOnClickListener(this);
            View viewFindViewById = findViewById(R.id.invite_close);
            this.inviteClose = viewFindViewById;
            viewFindViewById.setOnClickListener(this);
            return;
        }
        this.edtLanding = (EditText) findViewById(R.id.landing_invite_edit);
        Button button2 = (Button) findViewById(R.id.landing_submit);
        this.btnLandingSubmit = button2;
        button2.setOnClickListener(this);
        Button button3 = (Button) findViewById(R.id.landing_request_to_join);
        this.btnLandingRequest = button3;
        button3.setOnClickListener(this);
        this.edtLanding.addTextChangedListener(this.landingEditWatcher);
        this.tvLeftCount = (TextView) findViewById(R.id.request_text_count_left);
        EditText editText2 = (EditText) findViewById(R.id.request_edit);
        this.edtRequest = editText2;
        editText2.addTextChangedListener(this.requestMessageEditWatcher);
        Button button4 = (Button) findViewById(R.id.request_submit);
        this.btnRequestSubmit = button4;
        button4.setOnClickListener(this);
        View viewFindViewById2 = findViewById(R.id.landing_close);
        this.landingClose = viewFindViewById2;
        viewFindViewById2.setOnClickListener(this);
        this.landingContainer = findViewById(R.id.landing_container);
        this.requestContainer = findViewById(R.id.request_container);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        EditText editText;
        switch (view.getId()) {
            case R.id.invite_close /* 2131363647 */:
            case R.id.landing_close /* 2131363742 */:
                EditText editText2 = this.edtInvite;
                if (editText2 != null) {
                    SoftKeyboard.hideSoftKeyboard(editText2);
                } else if (this.requestToJoinStep == 0 && (editText = this.edtLanding) != null) {
                    SoftKeyboard.hideSoftKeyboard(editText);
                } else {
                    EditText editText3 = this.edtRequest;
                    if (editText3 != null) {
                        SoftKeyboard.hideSoftKeyboard(editText3);
                    }
                }
                Utils.postDelayed(new Runnable() { // from class: com.narvii.community.request.RequestJoinCommunityDialog.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RequestJoinCommunityDialog.this.dismiss();
                    }
                }, 0L);
                break;
            case R.id.invite_submit /* 2131363655 */:
            case R.id.landing_submit /* 2131363746 */:
                submitRequest();
                break;
            case R.id.landing_request_to_join /* 2131363745 */:
                gotoRequestToJoin();
                break;
            case R.id.request_submit /* 2131364901 */:
                submitRequestToJoin();
                break;
        }
    }
}

.class public Lcom/narvii/account/GoogleLoginFragment;
.super Lcom/narvii/account/ThirdPartyAccountBaseFragment;
.source "GoogleLoginFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# static fields
.field public static final REQUEST_TYPE_AUTOSIGNUP:I = 0x1

.field public static final REQUEST_TYPE_LOGIN:I = 0x2

.field public static final REQUEST_TYPE_SIGNUP:I = 0x3


# instance fields
.field email:Ljava/lang/String;

.field googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field name:Ljava/lang/String;

.field profileUri:Ljava/lang/String;

.field request:Lcom/narvii/util/http/ApiRequest;

.field requestType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;-><init>()V

    return-void
.end method

.method private onAccess(Ljava/lang/String;)V
    .locals 6

    const-string v0, "api"

    .line 247
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    const-string v1, "account"

    .line 248
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 249
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "/auth/login"

    .line 251
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 252
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceID"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "30 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "secret"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 254
    sget v1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "clientType"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 255
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getLocation()Lcom/narvii/location/GPSCoordinate;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v1}, Lcom/narvii/location/GPSCoordinate;->latitudeE6()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "latitude"

    invoke-virtual {v2, v5, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-nez v1, :cond_1

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {v1}, Lcom/narvii/location/GPSCoordinate;->longitudeE6()I

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "longitude"

    .line 257
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 259
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v3, "address"

    .line 260
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 261
    iget v1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    const-string v1, "auto"

    goto :goto_2

    :cond_2
    const-string v1, "normal"

    :goto_2
    const-string v3, "action"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 262
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "thirdPart"

    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 263
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v1

    .line 264
    iput-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 266
    new-instance v2, Lcom/narvii/account/GoogleLoginFragment$1;

    invoke-direct {v2, p0, p0, p1}, Lcom/narvii/account/GoogleLoginFragment$1;-><init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    .line 104
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const-string v0, "api"

    .line 105
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 106
    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 109
    :cond_0
    invoke-super {p0}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->cancel()Z

    move-result v0

    return v0
.end method

.method public cancelAutoLogin()V
    .locals 2

    .line 119
    iget v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    :cond_0
    return-void
.end method

.method protected getSignUpMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "googleSignup"

    return-object v0
.end method

.method public goToSetPasswordPage(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 326
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "autoSignup"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 327
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->goToSetPasswordPage(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    move/from16 v4, p1

    if-ne v4, v3, :cond_9

    if-eqz v2, :cond_0

    const-string v5, "com.google.android.gms.credentials.Credential"

    .line 210
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/credentials/Credential;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Google"

    const-string v6, "method"

    const-string v7, "reason"

    const-string v8, "code"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x6

    const-string v12, "logging"

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v2, :cond_5

    .line 213
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getIdTokens()Ljava/util/List;

    move-result-object v16

    const-string v17, "email"

    if-eqz v16, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getIdTokens()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/GoogleLoginFragment;->email:Ljava/lang/String;

    .line 215
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/account/GoogleLoginFragment;->name:Ljava/lang/String;

    .line 216
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getProfilePictureUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getIdTokens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/credentials/IdToken;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/IdToken;->getIdToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/account/GoogleLoginFragment;->onAccess(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    .line 220
    iget v1, v0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-ne v1, v3, :cond_3

    .line 221
    invoke-virtual {v0, v12}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/logging/LoggingService;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v6, v2, v15

    aput-object v5, v2, v3

    aput-object v17, v2, v14

    .line 222
    iget-object v4, v0, Lcom/narvii/account/GoogleLoginFragment;->email:Ljava/lang/String;

    aput-object v4, v2, v13

    const-string v4, "hasProfilePicture"

    aput-object v4, v2, v10

    iget-object v4, v0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    if-eqz v4, :cond_2

    const/4 v15, 0x1

    :cond_2
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    const-string v3, "AutoSignupStarting"

    invoke-interface {v1, v3, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 226
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v9, 0x7f0f073b

    invoke-static {v4, v9, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v4

    invoke-virtual {v4}, Lcom/narvii/util/NVToast;->show()V

    .line 227
    invoke-virtual {v0, v12}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/util/logging/LoggingService;

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v17, v9, v15

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v3

    aput-object v8, v9, v14

    const/16 v2, 0x2ec

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v13

    aput-object v7, v9, v10

    const-string v2, "GoogleAuthIdTokenMissing"

    const/16 v16, 0x5

    aput-object v2, v9, v16

    const-string v2, "AccountError"

    .line 228
    invoke-interface {v4, v2, v9}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_6

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0f004b

    invoke-static {v2, v4, v15}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/NVToast;->show()V

    .line 236
    :cond_6
    :goto_2
    iget v2, v0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-eq v2, v14, :cond_7

    if-ne v2, v13, :cond_8

    :cond_7
    const/4 v2, 0x0

    .line 237
    invoke-virtual {v0, v15, v1, v2}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 239
    :cond_8
    iget v2, v0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-ne v2, v3, :cond_9

    .line 240
    invoke-virtual {v0, v12}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/util/logging/LoggingService;

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v6, v4, v15

    aput-object v5, v4, v3

    aput-object v8, v4, v14

    .line 241
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v13

    aput-object v7, v4, v10

    const-string v1, "Cancel"

    const/4 v3, 0x5

    aput-object v1, v4, v3

    const-string v1, "AutoSignupQuited"

    invoke-interface {v2, v1, v4}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    .line 164
    iget p1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0, p1}, Lcom/narvii/account/GoogleLoginFragment;->performLogin(I)V

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 8

    .line 185
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-eq v0, v1, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 190
    :cond_0
    iget v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_4

    const-string v0, "logging"

    .line 200
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "method"

    aput-object v7, v6, v2

    const-string v2, "Google"

    aput-object v2, v6, v1

    const-string v1, "code"

    aput-object v1, v6, v4

    .line 201
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    const/4 v1, 0x4

    const-string v2, "reason"

    aput-object v2, v6, v1

    const/4 v1, 0x5

    const-string v2, "ConnectionFailed"

    aput-object v2, v6, v1

    const-string v1, "message"

    aput-object v1, v6, v3

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const-string p1, "AutoSignupQuited"

    invoke-interface {v0, p1, v6}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "Google service not available"

    .line 191
    invoke-virtual {p0, v3, v0}, Lcom/narvii/account/AccountBaseFragment;->setLastError(ILjava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0f073c

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x3a

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p1, 0x29

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, p1, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 7

    .line 171
    iget p1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    const-string v0, "ConnectionSuspended"

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    const-string p1, "logging"

    .line 178
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "method"

    aput-object v6, v1, v3

    const-string v3, "Google"

    aput-object v3, v1, v5

    const-string v3, "code"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v3, "reason"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v0, "AutoSignupQuited"

    invoke-interface {p1, v0, v1}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "Google service not available"

    .line 172
    invoke-virtual {p0, v1, p1}, Lcom/narvii/account/AccountBaseFragment;->setLastError(ILjava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0f073c

    invoke-static {p1, v1, v3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 176
    invoke-virtual {p0, v3, v3, v0}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CREDENTIALS_API:Lcom/google/android/gms/common/api/Api;

    .line 58
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 60
    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 78
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroy()V

    return-void
.end method

.method protected performLogin(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p1, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/narvii/account/LoginActivity;

    const/4 v4, 0x6

    if-ne p1, v0, :cond_0

    .line 128
    iput v2, v3, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 129
    iput v4, v3, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    goto :goto_0

    .line 131
    :cond_0
    iput v4, v3, Lcom/narvii/account/LoginActivity;->statMaxLoginStep:I

    .line 132
    iput v2, v3, Lcom/narvii/account/LoginActivity;->statMaxSignupSetp:I

    :goto_0
    const/4 v4, 0x4

    .line 134
    iput v4, v3, Lcom/narvii/account/LoginActivity;->statType:I

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 136
    :goto_1
    iput-boolean v4, p0, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->isLoginFlow:Z

    .line 138
    iput p1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-ne p1, v3, :cond_3

    const/4 v0, 0x2

    .line 144
    :cond_3
    new-instance p1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    new-instance v3, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    .line 146
    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setShowCancelButton(Z)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->setPrompt(I)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v0

    .line 145
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setHintPickerConfig(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "https://accounts.google.com"

    aput-object v3, v0, v2

    .line 149
    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setAccountTypes([Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object p1

    .line 150
    invoke-virtual {p1, v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setIdTokenRequested(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object p1

    .line 153
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->CredentialsApi:Lcom/google/android/gms/auth/api/credentials/CredentialsApi;

    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsApi;->getHintPickerIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 156
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/support/v4/app/Fragment;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 157
    invoke-static {}, Lcom/narvii/util/AppsflyerManager;->checkLinkForce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected queryThirdPartyInfo(Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    .line 314
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->profileUri:Ljava/lang/String;

    new-instance v1, Lcom/narvii/account/GoogleLoginFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/account/GoogleLoginFragment$2;-><init>(Lcom/narvii/account/GoogleLoginFragment;Lcom/narvii/account/ThirdPartyAccountBaseFragment$QueryThirdPartyInfoCallBack;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->saveImage(Ljava/lang/String;Lcom/narvii/account/ThirdPartyAccountBaseFragment$SaveImageCallBack;)V

    :goto_0
    return-void
.end method

.method public requestAutoLogin()V
    .locals 1

    .line 113
    iget v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/narvii/account/GoogleLoginFragment;->requestLogin(I)V

    :cond_0
    return-void
.end method

.method public requestLogin(I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    if-eqz v0, :cond_0

    const-string v0, "api"

    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 84
    iget-object v1, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->request:Lcom/narvii/util/http/ApiRequest;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0, p1}, Lcom/narvii/account/GoogleLoginFragment;->performLogin(I)V

    goto :goto_0

    .line 91
    :cond_1
    iput p1, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    .line 92
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/narvii/account/GoogleLoginFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_2
    :goto_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/account/AccountBaseFragment;->startSubmit()V

    :cond_4
    return-void
.end method

.method protected requirePassword(Ljava/lang/String;)V
    .locals 5

    .line 289
    iget v0, p0, Lcom/narvii/account/GoogleLoginFragment;->requestType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000e

    const v2, 0x7f01000f

    const v3, 0x7f010010

    const v4, 0x7f010011

    .line 291
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 293
    new-instance v1, Lcom/narvii/account/AgeGatingFragment;

    invoke-direct {v1}, Lcom/narvii/account/AgeGatingFragment;-><init>()V

    .line 294
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "method"

    const-string v4, "AutoSignup"

    .line 295
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "thirdPartSecret"

    .line 296
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0904ba

    .line 298
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/account/GoogleLoginFragment;->requirePasswordNext(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public requirePasswordNext(Ljava/lang/String;)V
    .locals 0

    .line 305
    invoke-super {p0, p1}, Lcom/narvii/account/ThirdPartyAccountBaseFragment;->requirePassword(Ljava/lang/String;)V

    return-void
.end method

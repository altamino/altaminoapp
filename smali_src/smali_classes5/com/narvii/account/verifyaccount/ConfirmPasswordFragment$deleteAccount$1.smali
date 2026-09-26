.class public final Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->deleteAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "message"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p1, "t"

    .line 13
    .line 14
    .line 15
    invoke-static {p6, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 30
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    const-string p2, "req"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment$deleteAccount$1;->this$0:Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;

    .line 18
    .line 19
    .line 20
    const v0, 0x7f010010

    .line 21
    .line 22
    .line 23
    const v1, 0x7f010011

    .line 24
    .line 25
    .line 26
    const v2, 0x7f01000e

    .line 27
    .line 28
    .line 29
    const v3, 0x7f01000f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->z(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 33
    .line 34
    new-instance v0, Lcom/narvii/account/SuccessfullyCompletedFragment;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Lcom/narvii/account/SuccessfullyCompletedFragment;-><init>()V

    .line 38
    .line 39
    new-instance v1, Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    const-string v2, "verify_type"

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->access$getVerifyAccountType(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)Lcom/narvii/account/verifyaccount/VerifyAccountType;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-static {v3}, Lcom/narvii/account/verifyaccount/VerifyAccountTypeKt;->getIntValue(Lcom/narvii/account/verifyaccount/VerifyAccountType;)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/narvii/app/NVFragment;->getContainerId()Ljava/lang/Integer;

    .line 62
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v2, 0x0

    .line 64
    .line 65
    const-string v3, "successfully_completed"

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 74
    move-result p2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-static {p2}, Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;->access$getFrame(Lcom/narvii/account/verifyaccount/ConfirmPasswordFragment;)Landroid/view/View;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    if-eqz p2, :cond_1

    .line 95
    .line 96
    .line 97
    const p2, 0x7f0a05ff

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->v(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentTransaction;->h(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    goto :goto_1

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_1
    return-void
.end method

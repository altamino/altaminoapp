.class public final Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/result/contract/ActivityResultContracts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartIntentSenderForResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Landroidx/activity/result/IntentSenderRequest;",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_SENDER_REQUEST:Ljava/lang/String; = "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_INTENT_SENDER_REQUEST:Ljava/lang/String; = "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_SEND_INTENT_EXCEPTION:Ljava/lang/String; = "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->Companion:Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    .line 2
    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->d(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic c(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult;->e(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroid/content/Context;Landroidx/activity/result/IntentSenderRequest;)Landroid/content/Intent;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/activity/result/IntentSenderRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "input"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance p1, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v0, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 15
    .line 16
    .line 17
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    const-string v0, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string p2, "Intent(ACTION_INTENT_SEN\u2026NT_SENDER_REQUEST, input)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-object p1
.end method

.method public e(ILandroid/content/Intent;)Landroidx/activity/result/ActivityResult;
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/activity/result/ActivityResult;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    .line 6
    return-object v0
.end method

.class public final Lcom/narvii/account/ConfirmDeleteAccountFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/account/ConfirmDeleteAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/ConfirmDeleteAccountFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final show(Lcom/narvii/app/NVContext;)V
    .locals 3
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    .line 10
    :goto_0
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    move-object v0, p1

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    const-string v2, "_delete_account"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->m0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    return-void

    .line 29
    .line 30
    :cond_1
    new-instance v1, Lcom/narvii/account/ConfirmDeleteAccountFragment;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lcom/narvii/account/ConfirmDeleteAccountFragment;-><init>()V

    .line 34
    .line 35
    check-cast p1, Landroid/app/Activity;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, v0, v2}, Lcom/narvii/app/NVDialogFragment;->show(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    if-nez p1, :cond_3

    .line 46
    return-void

    .line 47
    .line 48
    :cond_3
    const-string p1, "cannot find nvActivity by nvContext"

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 52
    :goto_1
    return-void
.end method

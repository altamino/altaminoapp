.class Lcom/narvii/prefs/AccountSettingFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/AccountSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$4;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 227
    new-instance p1, Lcom/narvii/account/LogoutHelper;

    iget-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$4;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    invoke-direct {p1, p2}, Lcom/narvii/account/LogoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    new-instance p2, Lcom/narvii/prefs/AccountSettingFragment$4$1;

    invoke-direct {p2, p0}, Lcom/narvii/prefs/AccountSettingFragment$4$1;-><init>(Lcom/narvii/prefs/AccountSettingFragment$4;)V

    invoke-virtual {p1, p2}, Lcom/narvii/account/LogoutHelper;->logout(Lcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method

.class Lcom/narvii/flag/resolve/FlagResolveFragment$2;
.super Ljava/lang/Object;
.source "FlagResolveFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/resolve/FlagResolveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/list/prefs/PrefsEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/list/prefs/PrefsEntry;)V
    .locals 1

    .line 105
    const-class p1, Lcom/narvii/chat/template/MessageTemplateFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveFragment$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveFragment$2;->call(Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method

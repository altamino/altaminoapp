.class Lcom/narvii/flag/resolve/FlagResolveBar$1;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/flag/FlagLogListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v0, v0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    const-string v1, "flag_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    const v0, 0x7f01000f

    const v1, 0x7f01000e

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVActivity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

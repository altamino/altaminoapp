.class Lcom/narvii/flag/resolve/FlagResolveBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-class v1, Lcom/narvii/flag/FlagLogListActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectId:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "flag_id"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    instance-of p1, p1, Lcom/narvii/app/NVActivity;

    .line 42
    .line 43
    .line 44
    const v0, 0x7f01000f

    .line 45
    .line 46
    .line 47
    const v1, 0x7f01000e

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$1;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 87
    :cond_1
    :goto_0
    return-void
.end method

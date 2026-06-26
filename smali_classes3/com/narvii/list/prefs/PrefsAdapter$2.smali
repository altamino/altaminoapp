.class Lcom/narvii/list/prefs/PrefsAdapter$2;
.super Ljava/lang/Object;
.source "PrefsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/prefs/PrefsAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/prefs/PrefsAdapter;

.field final synthetic val$ps:Lcom/narvii/list/prefs/PrefsSwitch;


# direct methods
.method constructor <init>(Lcom/narvii/list/prefs/PrefsAdapter;Lcom/narvii/list/prefs/PrefsSwitch;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->this$0:Lcom/narvii/list/prefs/PrefsAdapter;

    iput-object p2, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->val$ps:Lcom/narvii/list/prefs/PrefsSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 384
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->val$ps:Lcom/narvii/list/prefs/PrefsSwitch;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 385
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->val$ps:Lcom/narvii/list/prefs/PrefsSwitch;

    iget-object p2, p1, Lcom/narvii/list/prefs/PrefsSwitch;->callback:Lcom/narvii/util/Callback;

    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 386
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->this$0:Lcom/narvii/list/prefs/PrefsAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method

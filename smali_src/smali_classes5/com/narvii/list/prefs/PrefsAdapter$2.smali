.class Lcom/narvii/list/prefs/PrefsAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->this$0:Lcom/narvii/list/prefs/PrefsAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->val$ps:Lcom/narvii/list/prefs/PrefsSwitch;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->val$ps:Lcom/narvii/list/prefs/PrefsSwitch;

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    :goto_0
    iput-boolean p2, p1, Lcom/narvii/list/prefs/PrefsSwitch;->on:Z

    .line 10
    .line 11
    iget-object p2, p1, Lcom/narvii/list/prefs/PrefsSwitch;->callback:Lcom/narvii/util/Callback;

    .line 12
    .line 13
    .line 14
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$2;->this$0:Lcom/narvii/list/prefs/PrefsAdapter;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    .line 20
    return-void
.end method

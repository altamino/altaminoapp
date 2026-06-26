.class Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;
.super Ljava/lang/Object;
.source "ModerationHistoryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;->this$1:Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/narvii/poweruser/history/ModerationHistoryFragment$Adapter$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

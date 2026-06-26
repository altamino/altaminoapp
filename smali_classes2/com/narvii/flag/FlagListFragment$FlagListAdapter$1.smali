.class Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;
.super Ljava/lang/Object;
.source "FlagListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/FlagListFragment$FlagListAdapter;->showImodeOperationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

.field final synthetic val$dialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/flag/FlagListFragment$FlagListAdapter;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;->this$1:Lcom/narvii/flag/FlagListFragment$FlagListAdapter;

    iput-object p2, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 443
    iget-object p1, p0, Lcom/narvii/flag/FlagListFragment$FlagListAdapter$1;->val$dialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

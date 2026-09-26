.class public final synthetic Lcom/narvii/account/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/PushSettingListFragment$2;

.field public final synthetic b:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/i0;->a:Lcom/narvii/account/PushSettingListFragment$2;

    iput-object p2, p0, Lcom/narvii/account/i0;->b:Lcom/narvii/util/dialog/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/account/i0;->a:Lcom/narvii/account/PushSettingListFragment$2;

    iget-object v1, p0, Lcom/narvii/account/i0;->b:Lcom/narvii/util/dialog/AlertDialog;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/PushSettingListFragment$2;->b(Lcom/narvii/account/PushSettingListFragment$2;Lcom/narvii/util/dialog/AlertDialog;Landroid/view/View;)V

    return-void
.end method

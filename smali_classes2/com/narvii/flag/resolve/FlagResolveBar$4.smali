.class Lcom/narvii/flag/resolve/FlagResolveBar$4;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->showQuizzesConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$4;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 239
    check-cast p1, Lcom/narvii/model/api/BlogResponse;

    iget-object p1, p1, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 240
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$4;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0260

    .line 241
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const v1, 0x7f090448

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/feed/FeedListItem;

    .line 243
    invoke-virtual {v1, p1}, Lcom/narvii/feed/FeedListItem;->setFeed(Lcom/narvii/model/Feed;)V

    .line 244
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$4;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f0193

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 245
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$4;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0f039c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/narvii/flag/resolve/FlagResolveBar$4$1;

    invoke-direct {v1, p0}, Lcom/narvii/flag/resolve/FlagResolveBar$4$1;-><init>(Lcom/narvii/flag/resolve/FlagResolveBar$4;)V

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/narvii/util/dialog/AlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 251
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 236
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$4;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.class Lcom/narvii/master/search/FilterGlobalPostDialog$1;
.super Ljava/lang/Object;
.source "FilterGlobalPostDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/FilterGlobalPostDialog;-><init>(Landroid/content/Context;ZLcom/narvii/master/search/FilterGlobalPostDialog$OnSearchConfigChangListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/FilterGlobalPostDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$myAminoCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/FilterGlobalPostDialog;Landroid/content/Context;Landroid/widget/CheckBox;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->this$0:Lcom/narvii/master/search/FilterGlobalPostDialog;

    iput-object p2, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$myAminoCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 52
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$myAminoCheckBox:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->this$0:Lcom/narvii/master/search/FilterGlobalPostDialog;

    invoke-static {p1, p2}, Lcom/narvii/master/search/FilterGlobalPostDialog;->access$002(Lcom/narvii/master/search/FilterGlobalPostDialog;Z)Z

    return-void
.end method

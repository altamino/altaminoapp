.class Lcom/narvii/master/search/FilterGlobalPostDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->this$0:Lcom/narvii/master/search/FilterGlobalPostDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$myAminoCheckBox:Landroid/widget/CheckBox;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/Utils;->shouldShowLoginPage(Lcom/narvii/app/NVContext;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->val$myAminoCheckBox:Landroid/widget/CheckBox;

    .line 17
    const/4 p2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 21
    return-void

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/FilterGlobalPostDialog$1;->this$0:Lcom/narvii/master/search/FilterGlobalPostDialog;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/narvii/master/search/FilterGlobalPostDialog;->a(Lcom/narvii/master/search/FilterGlobalPostDialog;Z)V

    .line 27
    return-void
.end method

.class Lcom/narvii/story/quiz/UserIconsView$1;
.super Landroid/graphics/drawable/ColorDrawable;
.source "UserIconsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/quiz/UserIconsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/quiz/UserIconsView;


# direct methods
.method constructor <init>(Lcom/narvii/story/quiz/UserIconsView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/story/quiz/UserIconsView$1;->this$0:Lcom/narvii/story/quiz/UserIconsView;

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntrinsicWidth()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/story/quiz/UserIconsView$1;->this$0:Lcom/narvii/story/quiz/UserIconsView;

    invoke-static {v0}, Lcom/narvii/story/quiz/UserIconsView;->access$000(Lcom/narvii/story/quiz/UserIconsView;)I

    move-result v0

    return v0
.end method

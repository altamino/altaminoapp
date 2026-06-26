.class Lcom/narvii/widget/FlexSizeImageView$1;
.super Ljava/lang/Object;
.source "FlexSizeImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/FlexSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/FlexSizeImageView;


# direct methods
.method constructor <init>(Lcom/narvii/widget/FlexSizeImageView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageView$1;->this$0:Lcom/narvii/widget/FlexSizeImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageView$1;->this$0:Lcom/narvii/widget/FlexSizeImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

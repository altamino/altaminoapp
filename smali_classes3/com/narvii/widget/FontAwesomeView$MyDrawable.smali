.class Lcom/narvii/widget/FontAwesomeView$MyDrawable;
.super Lcom/narvii/util/FontAwesomeDrawable;
.source "FontAwesomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/FontAwesomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDrawable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/FontAwesomeView;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/FontAwesomeView;Landroid/content/Context;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/widget/FontAwesomeView$MyDrawable;->this$0:Lcom/narvii/widget/FontAwesomeView;

    .line 104
    invoke-direct {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 0

    return-void
.end method

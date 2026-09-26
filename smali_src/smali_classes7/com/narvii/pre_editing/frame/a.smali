.class public final synthetic Lcom/narvii/pre_editing/frame/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw7/u;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lw7/u;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/frame/a;->a:Lw7/u;

    iput-object p2, p0, Lcom/narvii/pre_editing/frame/a;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/frame/a;->a:Lw7/u;

    iget-object v1, p0, Lcom/narvii/pre_editing/frame/a;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/narvii/pre_editing/frame/VideoFrameReader;->a(Lw7/u;Landroid/graphics/Bitmap;)V

    return-void
.end method

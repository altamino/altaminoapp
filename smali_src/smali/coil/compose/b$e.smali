.class public final Lcoil/compose/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/b;->P(Lcoil/request/h;)Lcoil/request/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder$target$4\n+ 2 AsyncImagePainter.kt\ncoil/compose/AsyncImagePainter\n+ 3 ImageRequest.kt\ncoil/request/ImageRequest$Builder$target$2\n+ 4 ImageRequest.kt\ncoil/request/ImageRequest$Builder$target$3\n*L\n1#1,1056:1\n269#2,2:1057\n846#3:1059\n847#4:1060\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcoil/compose/b;


# direct methods
.method public constructor <init>(Lcoil/compose/b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/compose/b$e;->this$0:Lcoil/compose/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/compose/b$e;->this$0:Lcoil/compose/b;

    .line 3
    .line 4
    new-instance v1, Lcoil/compose/b$c$c;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcoil/compose/b$e;->this$0:Lcoil/compose/b;

    .line 9
    .line 10
    .line 11
    invoke-static {v2, p1}, Lcoil/compose/b;->p(Lcoil/compose/b;Landroid/graphics/drawable/Drawable;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-direct {v1, p1}, Lcoil/compose/b$c$c;-><init>(Landroidx/compose/ui/graphics/painter/Painter;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcoil/compose/b;->s(Lcoil/compose/b;Lcoil/compose/b$c;)V

    .line 21
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

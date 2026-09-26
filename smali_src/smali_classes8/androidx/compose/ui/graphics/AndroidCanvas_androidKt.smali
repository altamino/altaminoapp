.class public final Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidCanvas.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCanvas.android.kt\nandroidx/compose/ui/graphics/AndroidCanvas_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
.end annotation


# static fields
.field private static final EmptyCanvas:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    .line 8
    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;
    .locals 2
    .param p0    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "image"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/ui/graphics/AndroidCanvas;-><init>()V

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Canvas;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap_androidKt;->b(Landroidx/compose/ui/graphics/ImageBitmap;)Landroid/graphics/Bitmap;

    .line 16
    move-result-object p0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/AndroidCanvas;->z(Landroid/graphics/Canvas;)V

    .line 23
    return-object v0
.end method

.method public static final synthetic b()Landroid/graphics/Canvas;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->EmptyCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 1
    .param p0    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    check-cast p0, Landroidx/compose/ui/graphics/AndroidCanvas;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidCanvas;->y()Landroid/graphics/Canvas;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

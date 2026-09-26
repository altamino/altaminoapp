.class final Lcoil/compose/a$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/a;->a(Ljava/lang/Object;Ljava/lang/String;Lcoil/e;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha:F

.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $filterQuality:I

.field final synthetic $imageLoader:Lcoil/e;

.field final synthetic $model:Ljava/lang/Object;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onState:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transform:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Lcoil/compose/b$c;",
            "Lcoil/compose/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcoil/e;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcoil/e;",
            "Landroidx/compose/ui/Modifier;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "+",
            "Lcoil/compose/b$c;",
            ">;",
            "Le8/l<",
            "-",
            "Lcoil/compose/b$c;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/ui/layout/ContentScale;",
            "F",
            "Landroidx/compose/ui/graphics/ColorFilter;",
            "IIII)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/a$a;->$model:Ljava/lang/Object;

    iput-object p2, p0, Lcoil/compose/a$a;->$contentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcoil/compose/a$a;->$imageLoader:Lcoil/e;

    iput-object p4, p0, Lcoil/compose/a$a;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lcoil/compose/a$a;->$transform:Le8/l;

    iput-object p6, p0, Lcoil/compose/a$a;->$onState:Le8/l;

    iput-object p7, p0, Lcoil/compose/a$a;->$alignment:Landroidx/compose/ui/Alignment;

    iput-object p8, p0, Lcoil/compose/a$a;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput p9, p0, Lcoil/compose/a$a;->$alpha:F

    iput-object p10, p0, Lcoil/compose/a$a;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iput p11, p0, Lcoil/compose/a$a;->$filterQuality:I

    iput p12, p0, Lcoil/compose/a$a;->$$changed:I

    iput p13, p0, Lcoil/compose/a$a;->$$changed1:I

    iput p14, p0, Lcoil/compose/a$a;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 16
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcoil/compose/a$a;->$model:Ljava/lang/Object;

    iget-object v2, v0, Lcoil/compose/a$a;->$contentDescription:Ljava/lang/String;

    iget-object v3, v0, Lcoil/compose/a$a;->$imageLoader:Lcoil/e;

    iget-object v4, v0, Lcoil/compose/a$a;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v5, v0, Lcoil/compose/a$a;->$transform:Le8/l;

    iget-object v6, v0, Lcoil/compose/a$a;->$onState:Le8/l;

    iget-object v7, v0, Lcoil/compose/a$a;->$alignment:Landroidx/compose/ui/Alignment;

    iget-object v8, v0, Lcoil/compose/a$a;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iget v9, v0, Lcoil/compose/a$a;->$alpha:F

    iget-object v10, v0, Lcoil/compose/a$a;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iget v11, v0, Lcoil/compose/a$a;->$filterQuality:I

    iget v12, v0, Lcoil/compose/a$a;->$$changed:I

    or-int/lit8 v13, v12, 0x1

    iget v14, v0, Lcoil/compose/a$a;->$$changed1:I

    iget v15, v0, Lcoil/compose/a$a;->$$default:I

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v15}, Lcoil/compose/a;->a(Ljava/lang/Object;Ljava/lang/String;Lcoil/e;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;III)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcoil/compose/a$a;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

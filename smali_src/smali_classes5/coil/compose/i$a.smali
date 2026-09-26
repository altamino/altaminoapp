.class final Lcoil/compose/i$a;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/i;->a(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha:F

.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $filterQuality:I

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
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
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
            "III)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/compose/i$a;->$model:Ljava/lang/Object;

    iput-object p2, p0, Lcoil/compose/i$a;->$contentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcoil/compose/i$a;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcoil/compose/i$a;->$transform:Le8/l;

    iput-object p5, p0, Lcoil/compose/i$a;->$onState:Le8/l;

    iput-object p6, p0, Lcoil/compose/i$a;->$alignment:Landroidx/compose/ui/Alignment;

    iput-object p7, p0, Lcoil/compose/i$a;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput p8, p0, Lcoil/compose/i$a;->$alpha:F

    iput-object p9, p0, Lcoil/compose/i$a;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iput p10, p0, Lcoil/compose/i$a;->$filterQuality:I

    iput p11, p0, Lcoil/compose/i$a;->$$changed:I

    iput p12, p0, Lcoil/compose/i$a;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcoil/compose/i$a;->$model:Ljava/lang/Object;

    iget-object v1, p0, Lcoil/compose/i$a;->$contentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcoil/compose/i$a;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcoil/compose/i$a;->$transform:Le8/l;

    iget-object v4, p0, Lcoil/compose/i$a;->$onState:Le8/l;

    iget-object v5, p0, Lcoil/compose/i$a;->$alignment:Landroidx/compose/ui/Alignment;

    iget-object v6, p0, Lcoil/compose/i$a;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iget v7, p0, Lcoil/compose/i$a;->$alpha:F

    iget-object v8, p0, Lcoil/compose/i$a;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iget v9, p0, Lcoil/compose/i$a;->$filterQuality:I

    iget p2, p0, Lcoil/compose/i$a;->$$changed:I

    or-int/lit8 v11, p2, 0x1

    iget v12, p0, Lcoil/compose/i$a;->$$default:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Lcoil/compose/i;->a(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Le8/l;Le8/l;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;ILandroidx/compose/runtime/Composer;II)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcoil/compose/i$a;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

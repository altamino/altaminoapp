.class public Landroidx/constraintlayout/core/state/WidgetFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final OLD_SYSTEM:Z = true

.field public static phone_orientation:F = NaNf


# instance fields
.field public alpha:F

.field public bottom:I

.field public interpolatedPos:F

.field public left:I

.field public final mCustom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public pivotX:F

.field public pivotY:F

.field public right:I

.field public rotationX:F

.field public rotationY:F

.field public rotationZ:F

.field public scaleX:F

.field public scaleY:F

.field public top:I

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public visibility:I

.field public widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 8
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    .line 9
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    .line 10
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    .line 11
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    .line 12
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/WidgetFrame;->c(Landroidx/constraintlayout/core/state/WidgetFrame;)V

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->left:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->top:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->right:I

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->bottom:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    iput v2, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->interpolatedPos:F

    iput v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->name:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 9
    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Landroidx/constraintlayout/core/state/WidgetFrame;)V
    .locals 3

    .line 1
    .line 2
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    .line 3
    .line 4
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotX:F

    .line 5
    .line 6
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    .line 7
    .line 8
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->pivotY:F

    .line 9
    .line 10
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    .line 11
    .line 12
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationX:F

    .line 13
    .line 14
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    .line 15
    .line 16
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationY:F

    .line 17
    .line 18
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    .line 19
    .line 20
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->rotationZ:F

    .line 21
    .line 22
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    .line 23
    .line 24
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationX:F

    .line 25
    .line 26
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    .line 27
    .line 28
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationY:F

    .line 29
    .line 30
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    .line 31
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->translationZ:F

    .line 33
    .line 34
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    .line 35
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleX:F

    .line 37
    .line 38
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    .line 39
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->scaleY:F

    .line 41
    .line 42
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    .line 43
    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->alpha:F

    .line 45
    .line 46
    iget v0, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 47
    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->visibility:I

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    check-cast v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/constraintlayout/core/state/WidgetFrame;->mCustom:Ljava/util/HashMap;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->c()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->b()Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

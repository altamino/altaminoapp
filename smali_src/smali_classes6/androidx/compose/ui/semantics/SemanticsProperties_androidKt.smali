.class public final Landroidx/compose/ui/semantics/SemanticsProperties_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final testTagsAsResourceId$delegate:Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 4
    .line 5
    new-instance v2, Lkotlin/jvm/internal/a0;

    .line 6
    .line 7
    const-string v3, "testTagsAsResourceId"

    .line 8
    .line 9
    const-string v4, "getTestTagsAsResourceId(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z"

    .line 10
    .line 11
    const-class v5, Landroidx/compose/ui/semantics/SemanticsProperties_androidKt;

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v5, v3, v4, v0}, Lkotlin/jvm/internal/a0;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/q0;->e(Lkotlin/jvm/internal/z;)Lkotlin/reflect/KMutableProperty1;

    .line 18
    move-result-object v0

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    aput-object v0, v1, v2

    .line 22
    .line 23
    sput-object v1, Landroidx/compose/ui/semantics/SemanticsProperties_androidKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties_androidKt;->testTagsAsResourceId$delegate:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 32
    return-void
.end method

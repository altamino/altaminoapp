.class public Landroidx/appcompat/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sAccessibilityHeading:[I

.field private static final sAccessibilityPaneTitle:[I

.field private static final sClassPrefixList:[Ljava/lang/String;

.field private static final sConstructorMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I

.field private static final sScreenReaderFocusable:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const-class v2, Landroid/content/Context;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    const-class v2, Landroid/util/AttributeSet;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const v0, 0x101026f

    .line 19
    .line 20
    .line 21
    filled-new-array {v0}, [I

    .line 22
    move-result-object v0

    .line 23
    .line 24
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 25
    .line 26
    .line 27
    const v0, 0x1010580

    .line 28
    .line 29
    .line 30
    filled-new-array {v0}, [I

    .line 31
    move-result-object v0

    .line 32
    .line 33
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityHeading:[I

    .line 34
    .line 35
    .line 36
    const v0, 0x101057c

    .line 37
    .line 38
    .line 39
    filled-new-array {v0}, [I

    .line 40
    move-result-object v0

    .line 41
    .line 42
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityPaneTitle:[I

    .line 43
    .line 44
    .line 45
    const v0, 0x1010574

    .line 46
    .line 47
    .line 48
    filled-new-array {v0}, [I

    .line 49
    move-result-object v0

    .line 50
    .line 51
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sScreenReaderFocusable:[I

    .line 52
    .line 53
    const-string v0, "android.view."

    .line 54
    .line 55
    const-string v1, "android.webkit."

    .line 56
    .line 57
    const-string v2, "android.widget."

    .line 58
    .line 59
    .line 60
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 64
    .line 65
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 69
    .line 70
    sput-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Landroidx/collection/SimpleArrayMap;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 9
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-le v0, v1, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityHeading:[I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    .line 27
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->v0(Landroid/view/View;Z)V

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    .line 32
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sAccessibilityPaneTitle:[I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v2}, Landroidx/core/view/ViewCompat;->x0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    .line 54
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sScreenReaderFocusable:[I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 62
    move-result p3

    .line 63
    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 68
    move-result p3

    .line 69
    .line 70
    .line 71
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->T0(Landroid/view/View;Z)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void
.end method

.method private b(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->S(Landroid/view/View;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    sget-object v1, Landroidx/appcompat/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v1, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, p1, v0}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method private s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorMap:Landroidx/collection/SimpleArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p3, p2

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 33
    move-result-object p1

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-static {p3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    const-class p3, Landroid/view/View;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    sget-object p3, Landroidx/appcompat/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    const/4 p1, 0x1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    .line 59
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p1

    .line 67
    :catch_0
    const/4 p1, 0x0

    .line 68
    return-object p1
.end method

.method private t(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    .line 1
    .line 2
    const-string v0, "view"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string p2, "class"

    .line 12
    .line 13
    .line 14
    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v3, v2

    .line 22
    .line 23
    aput-object p3, v3, v0

    .line 24
    .line 25
    const/16 p3, 0x2e

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    .line 29
    move-result p3

    .line 30
    const/4 v3, -0x1

    .line 31
    .line 32
    if-ne v3, p3, :cond_3

    .line 33
    move p3, v2

    .line 34
    .line 35
    :goto_0
    sget-object v3, Landroidx/appcompat/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 36
    array-length v4, v3

    .line 37
    .line 38
    if-ge p3, v4, :cond_2

    .line 39
    .line 40
    aget-object v3, v3, p3

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, p2, v3}, Landroidx/appcompat/app/AppCompatViewInflater;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 44
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v1, p1, v2

    .line 51
    .line 52
    aput-object v1, p1, v0

    .line 53
    return-object v3

    .line 54
    .line 55
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v1, p1, v2

    .line 63
    .line 64
    aput-object v1, p1, v0

    .line 65
    return-object v1

    .line 66
    .line 67
    .line 68
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, v1}, Landroidx/appcompat/app/AppCompatViewInflater;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    .line 69
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v1, p2, v2

    .line 74
    .line 75
    aput-object v1, p2, v0

    .line 76
    return-object p1

    .line 77
    .line 78
    :goto_1
    iget-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 79
    .line 80
    aput-object v1, p2, v2

    .line 81
    .line 82
    aput-object v1, p2, v0

    .line 83
    throw p1

    .line 84
    .line 85
    :catch_0
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 86
    .line 87
    aput-object v1, p1, v2

    .line 88
    .line 89
    aput-object v1, p1, v0

    .line 90
    return-object v1
.end method

.method private static u(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/appcompat/R$styleable;->View:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget p2, Landroidx/appcompat/R$styleable;->View_android_theme:I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    move-result p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move p2, v1

    .line 18
    .line 19
    :goto_0
    if-eqz p3, :cond_1

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    sget p2, Landroidx/appcompat/R$styleable;->View_theme:I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result p2

    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const-string p3, "AppCompatViewInflater"

    .line 32
    .line 33
    const-string v0, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 34
    .line 35
    .line 36
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    instance-of p1, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    move-object p1, p0

    .line 47
    .line 48
    check-cast p1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/appcompat/view/ContextThemeWrapper;->c()I

    .line 52
    move-result p1

    .line 53
    .line 54
    if-eq p1, p2, :cond_3

    .line 55
    .line 56
    :cond_2
    new-instance p1, Landroidx/appcompat/view/ContextThemeWrapper;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p0, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 60
    move-object p0, p1

    .line 61
    :cond_3
    return-object p0
.end method

.method private v(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, " asked to inflate view for <"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p2, ">, but returned null"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method


# virtual methods
.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected f(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected g(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected h(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected j(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected l(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatRatingBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected n(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected p(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatToggleButton;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/appcompat/widget/AppCompatToggleButton;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    return-object v0
.end method

.method protected q(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method final r(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
    .locals 0
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p1, p3

    .line 11
    .line 12
    :goto_0
    if-nez p6, :cond_1

    .line 13
    .line 14
    if-eqz p7, :cond_2

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-static {p1, p4, p6, p7}, Landroidx/appcompat/app/AppCompatViewInflater;->u(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    :cond_2
    if-eqz p8, :cond_3

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 31
    move-result p5

    .line 32
    const/4 p6, -0x1

    .line 33
    .line 34
    .line 35
    sparse-switch p5, :sswitch_data_0

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_0
    const-string p5, "Button"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p5

    .line 44
    .line 45
    if-nez p5, :cond_4

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_4
    const/16 p6, 0xd

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :sswitch_1
    const-string p5, "EditText"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result p5

    .line 58
    .line 59
    if-nez p5, :cond_5

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_5
    const/16 p6, 0xc

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :sswitch_2
    const-string p5, "CheckBox"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result p5

    .line 72
    .line 73
    if-nez p5, :cond_6

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_6
    const/16 p6, 0xb

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :sswitch_3
    const-string p5, "AutoCompleteTextView"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result p5

    .line 86
    .line 87
    if-nez p5, :cond_7

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :cond_7
    const/16 p6, 0xa

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :sswitch_4
    const-string p5, "ImageView"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p5

    .line 100
    .line 101
    if-nez p5, :cond_8

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :cond_8
    const/16 p6, 0x9

    .line 106
    .line 107
    goto/16 :goto_1

    .line 108
    .line 109
    :sswitch_5
    const-string p5, "ToggleButton"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result p5

    .line 114
    .line 115
    if-nez p5, :cond_9

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :cond_9
    const/16 p6, 0x8

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :sswitch_6
    const-string p5, "RadioButton"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p5

    .line 128
    .line 129
    if-nez p5, :cond_a

    .line 130
    goto :goto_1

    .line 131
    :cond_a
    const/4 p6, 0x7

    .line 132
    goto :goto_1

    .line 133
    .line 134
    :sswitch_7
    const-string p5, "Spinner"

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    move-result p5

    .line 139
    .line 140
    if-nez p5, :cond_b

    .line 141
    goto :goto_1

    .line 142
    :cond_b
    const/4 p6, 0x6

    .line 143
    goto :goto_1

    .line 144
    .line 145
    :sswitch_8
    const-string p5, "SeekBar"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result p5

    .line 150
    .line 151
    if-nez p5, :cond_c

    .line 152
    goto :goto_1

    .line 153
    :cond_c
    const/4 p6, 0x5

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :sswitch_9
    const-string p5, "ImageButton"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    move-result p5

    .line 161
    .line 162
    if-nez p5, :cond_d

    .line 163
    goto :goto_1

    .line 164
    :cond_d
    const/4 p6, 0x4

    .line 165
    goto :goto_1

    .line 166
    .line 167
    :sswitch_a
    const-string p5, "TextView"

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result p5

    .line 172
    .line 173
    if-nez p5, :cond_e

    .line 174
    goto :goto_1

    .line 175
    :cond_e
    const/4 p6, 0x3

    .line 176
    goto :goto_1

    .line 177
    .line 178
    :sswitch_b
    const-string p5, "MultiAutoCompleteTextView"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result p5

    .line 183
    .line 184
    if-nez p5, :cond_f

    .line 185
    goto :goto_1

    .line 186
    :cond_f
    const/4 p6, 0x2

    .line 187
    goto :goto_1

    .line 188
    .line 189
    :sswitch_c
    const-string p5, "CheckedTextView"

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    move-result p5

    .line 194
    .line 195
    if-nez p5, :cond_10

    .line 196
    goto :goto_1

    .line 197
    :cond_10
    const/4 p6, 0x1

    .line 198
    goto :goto_1

    .line 199
    .line 200
    :sswitch_d
    const-string p5, "RatingBar"

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result p5

    .line 205
    .line 206
    if-nez p5, :cond_11

    .line 207
    goto :goto_1

    .line 208
    :cond_11
    const/4 p6, 0x0

    .line 209
    .line 210
    .line 211
    :goto_1
    packed-switch p6, :pswitch_data_0

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->q(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 215
    move-result-object p5

    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    .line 219
    .line 220
    :pswitch_0
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    .line 221
    move-result-object p5

    .line 222
    .line 223
    .line 224
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 225
    .line 226
    goto/16 :goto_2

    .line 227
    .line 228
    .line 229
    :pswitch_1
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->g(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatEditText;

    .line 230
    move-result-object p5

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 234
    goto :goto_2

    .line 235
    .line 236
    .line 237
    :pswitch_2
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 238
    move-result-object p5

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 242
    goto :goto_2

    .line 243
    .line 244
    .line 245
    :pswitch_3
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 246
    move-result-object p5

    .line 247
    .line 248
    .line 249
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 250
    goto :goto_2

    .line 251
    .line 252
    .line 253
    :pswitch_4
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageView;

    .line 254
    move-result-object p5

    .line 255
    .line 256
    .line 257
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 258
    goto :goto_2

    .line 259
    .line 260
    .line 261
    :pswitch_5
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->p(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatToggleButton;

    .line 262
    move-result-object p5

    .line 263
    .line 264
    .line 265
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 266
    goto :goto_2

    .line 267
    .line 268
    .line 269
    :pswitch_6
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 270
    move-result-object p5

    .line 271
    .line 272
    .line 273
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 274
    goto :goto_2

    .line 275
    .line 276
    .line 277
    :pswitch_7
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->n(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSpinner;

    .line 278
    move-result-object p5

    .line 279
    .line 280
    .line 281
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 282
    goto :goto_2

    .line 283
    .line 284
    .line 285
    :pswitch_8
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->m(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 286
    move-result-object p5

    .line 287
    .line 288
    .line 289
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 290
    goto :goto_2

    .line 291
    .line 292
    .line 293
    :pswitch_9
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->h(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatImageButton;

    .line 294
    move-result-object p5

    .line 295
    .line 296
    .line 297
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 298
    goto :goto_2

    .line 299
    .line 300
    .line 301
    :pswitch_a
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->o(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 302
    move-result-object p5

    .line 303
    .line 304
    .line 305
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 306
    goto :goto_2

    .line 307
    .line 308
    .line 309
    :pswitch_b
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->j(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    .line 310
    move-result-object p5

    .line 311
    .line 312
    .line 313
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 314
    goto :goto_2

    .line 315
    .line 316
    .line 317
    :pswitch_c
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->f(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 318
    move-result-object p5

    .line 319
    .line 320
    .line 321
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 322
    goto :goto_2

    .line 323
    .line 324
    .line 325
    :pswitch_d
    invoke-virtual {p0, p1, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->l(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRatingBar;

    .line 326
    move-result-object p5

    .line 327
    .line 328
    .line 329
    invoke-direct {p0, p5, p2}, Landroidx/appcompat/app/AppCompatViewInflater;->v(Landroid/view/View;Ljava/lang/String;)V

    .line 330
    .line 331
    :goto_2
    if-nez p5, :cond_12

    .line 332
    .line 333
    if-eq p3, p1, :cond_12

    .line 334
    .line 335
    .line 336
    invoke-direct {p0, p1, p2, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->t(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    .line 337
    move-result-object p5

    .line 338
    .line 339
    :cond_12
    if-eqz p5, :cond_13

    .line 340
    .line 341
    .line 342
    invoke-direct {p0, p5, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->b(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 343
    .line 344
    .line 345
    invoke-direct {p0, p1, p5, p4}, Landroidx/appcompat/app/AppCompatViewInflater;->a(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 346
    :cond_13
    return-object p5

    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

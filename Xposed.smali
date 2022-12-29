.class public Lmt/Xposed;
.super Landroid/content/ContentProvider;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 20
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmt/Xposed;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static checkXpFormMap()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 92
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 93
    .local v0, "Pid":I
    if-gez v0, :cond_26

    .line 94
    new-instance v3, Ljava/io/File;

    const-string v7, "/proc/self/maps"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "maps":Ljava/io/File;
    :goto_e
    :try_start_e
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v5, "reader":Ljava/io/BufferedReader;
    :cond_1d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_66

    move-result-object v4

    .line 102
    .local v4, "readLine":Ljava/lang/String;
    move-object v2, v4

    .line 103
    .local v2, "line":Ljava/lang/String;
    if-nez v4, :cond_45

    .line 104
    const/4 v6, 0x0

    .line 113
    .end local v2  # "line":Ljava/lang/String;
    .end local v4  # "readLine":Ljava/lang/String;
    .end local v5  # "reader":Ljava/io/BufferedReader;
    :cond_25
    :goto_25
    return v6

    .line 96
    .end local v3  # "maps":Ljava/io/File;
    :cond_26
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/maps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3  # "maps":Ljava/io/File;
    goto :goto_e

    .line 106
    .restart local v2  # "line":Ljava/lang/String;
    .restart local v4  # "readLine":Ljava/lang/String;
    .restart local v5  # "reader":Ljava/io/BufferedReader;
    :cond_45
    :try_start_45
    const-string v7, "libdexposed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "libsubstrate.so"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    const-string v7, "libepic.so"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 109
    const-string v7, "libxposed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_62} :catch_66

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_25

    .line 111
    .end local v2  # "line":Ljava/lang/String;
    .end local v4  # "readLine":Ljava/lang/String;
    .end local v5  # "reader":Ljava/io/BufferedReader;
    :catch_66
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method private static isHookByStack()Z
    .registers 9

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 68
    .local v1, "isHook":Z
    :try_start_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "blah"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_9

    .line 69
    :catch_9
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 71
    .local v3, "zygoteInitCallCount":I
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v6, :cond_75

    aget-object v2, v5, v4

    .line 72
    .local v2, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.internal.os.ZygoteInit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_27

    .line 73
    const/4 v1, 0x1

    .line 75
    :cond_27
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.saurik.substrate.MS$2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "invoked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 76
    const/4 v1, 0x1

    .line 78
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "main"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 79
    const/4 v1, 0x1

    .line 81
    :cond_59
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "de.robv.android.xposed.XposedBridge"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleHookedMethod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 82
    const/4 v1, 0x1

    .line 71
    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 85
    .end local v2  # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_75
    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 8

    .prologue
    .line 24
    iget-object v0, p0, Lmt/Xposed;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-static {}, Lmt/Xposed;->checkXpFormMap()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 60
    :cond_a
    invoke-static {}, Lmt/Xposed;->isHookByStack()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 61
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 62
    :cond_13
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"  # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"  # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
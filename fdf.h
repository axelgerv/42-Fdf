/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fdf.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lutomasz <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/16 16:27:16 by lutomasz          #+#    #+#             */
/*   Updated: 2019/02/16 16:27:19 by lutomasz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FDF_H
# define FDF_H

#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <math.h>
#include "mlx.h"
#include "includes/libft/libft.h"

# define FALSE 0
# define TRUE 1
# define ERROR -1

typedef struct 	s_struct
{
	int x;
	int y;
	void *mlx_ptr;
	void *win_ptr;
}				t_struct;

#endif

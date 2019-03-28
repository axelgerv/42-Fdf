/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fdf.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: axelgerv <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/22 16:23:58 by axelgerv          #+#    #+#             */
/*   Updated: 2019/03/28 14:14:47 by axelgerv         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "mlx.h"

int		main()
{
	void	*mlx_ptr;
	void	*win_ptr;

	mlx_ptr = mlx_init();
	win_ptr = mlx_new_window(mlx_ptr, 500, 500, "mlx 42");
	mlx_loop(mlx_ptr);
	mlx_pixel_put(mlx_ptr, win_ptr, 250, 250, 0xFFFFFF);
	return (0);
}
